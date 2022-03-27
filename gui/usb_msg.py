from collections import namedtuple
import struct

class TlmId:
    SysStatus = 0

SysStatus = namedtuple('SysStatus', ['padding', 'temp', 'vccint', 'vccaux', 'v14p0', 'v5p0'])

def unpack(msg_bytes):
    msg = None
    msg_id, = struct.unpack_from('<B', msg_bytes)
    if msg_id == TlmId.SysStatus:
        padding, temp, vccint, vccaux, v14p0, v5p0 = SysStatus(*struct.unpack_from('<BHHHHH', msg_bytes, 1))
        temp = (temp/65536.0)/0.00198421639 - 273.15
        vccint = (vccint*3/65536.0)
        vccaux = (vccaux*3/65536.0)
        v14p0 = (v14p0/65536.0)*(12000+2320+1000)/1000
        v5p0 = (v5p0/65536.0)*(2400+2320+1000)/1000
        msg = SysStatus(padding, temp, vccint, vccaux, v14p0, v5p0)

    return msg
