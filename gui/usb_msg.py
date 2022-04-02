from collections import namedtuple
import struct

class MsgId:
    Debug = 0
    SysStatus = 1
    Timing = 2
    RopeStatus = 3
    SetBPLSSWState = 4
    SetSBFState = 5
    ReadSingleWord = 6

SysStatus = namedtuple('SysStatus', ['temp', 'vccint', 'vccaux', 'v14p0', 'v5p0'])
Timing = namedtuple('Timing', ['bplssw_pg_loss_timeout', 'bplssw_poweron_timeout',
                               'ihenv_offset', 'ihenv_width',
                               'reset1_offset', 'reset1_width',
                               'set_offset', 'set_width',
                               'strgat_offset', 'strgat_width',
                               'reset2_offset', 'reset2_width',
                               'sbf_offset', 'sbf_width'])
RopeStatus = namedtuple('RopeStatus', ['bplssw_state', 'sbf_state', 'last_address', 'sensed_word'])
ReadSingleWord = namedtuple('ReadSingleWord', ['address'])
SetBPLSSWState = namedtuple('SetBPLSSWState', ['on'])
SetSBFState = namedtuple('SetSBFState', ['on'])


def unpack(msg_bytes):
    msg = None
    msg_id, = struct.unpack_from('<H', msg_bytes)

    if msg_id == MsgId.Debug:
        print(struct.unpack_from('<12s', msg_bytes, 2)[0])

    elif msg_id == MsgId.SysStatus:
        temp, vccint, vccaux, v14p0, v5p0 = struct.unpack_from('<5H', msg_bytes, 2)
        temp = (temp/65536.0)/0.00198421639 - 273.15
        vccint = (vccint*3/65536.0)
        vccaux = (vccaux*3/65536.0)
        v14p0 = (v14p0/65536.0)*(12000+2320+1000)/1000
        v5p0 = (v5p0/65536.0)*(2400+2320+1000)/1000
        msg = SysStatus(temp, vccint, vccaux, v14p0, v5p0)

    elif msg_id == MsgId.Timing:
        params = list(struct.unpack_from('<HI12H', msg_bytes, 2))
        params[1] /= 100000.0
        for i in range(2, len(params)):
            params[i] /= 100.0
        msg = Timing(*params)

    elif msg_id == MsgId.RopeStatus:
        msg = RopeStatus(*struct.unpack_from('<??HH', msg_bytes, 2))

    return msg

def pack(msg):
    msg_bytes = b''
    if isinstance(msg, Timing):
        msg_bytes += struct.pack('<H', MsgId.Timing)
        params = list(msg)
        params[1] = round(params[1] * 100000)
        for i in range(2, len(params)):
            params[i] = round(params[i] * 100)
        msg_bytes += struct.pack('<HI12H', *params)

    elif isinstance(msg, SetBPLSSWState):
        msg_bytes += struct.pack('<H', MsgId.SetBPLSSWState)
        msg_bytes += struct.pack('<?x', msg.on)

    elif isinstance(msg, SetSBFState):
        msg_bytes += struct.pack('<H', MsgId.SetSBFState)
        msg_bytes += struct.pack('<?x', msg.on)

    elif isinstance(msg, ReadSingleWord):
        msg_bytes += struct.pack('<H', MsgId.ReadSingleWord)
        msg_bytes += struct.pack('<H', msg.address)

    return msg_bytes
