from slip import slip, unslip_from
import sys
import serial
import time
import crcmod.predefined
import struct

crc8 = crcmod.predefined.mkCrcFun('crc-8')
ser = serial.Serial(sys.argv[1], 115200, timeout=0)

a = 0
r = b''
while True:
    d = struct.pack('<HHHHHHHB', 0xAB, 0x1234, 3, 4, 5, 6, 7, 8)*3
    crc = crc8(d)
    # if (a % 100) == 0:
    d += struct.pack('<B', crc)
    d = slip(d)
    print(len(d))
    ser.write(d)
    a += 1
    time.sleep(0.15)
    r = ser.read(10000)
    if r:
        print(r)
        # msg, r = unslip_from(r)
        # if len(msg) == 0:
        #     continue

        # print(msg)
        # print(msg.hex())
        # tlmid,pad,temp,vccint,vccaux,v14p0,v5p0 = struct.unpack('<BBHHHHH', msg)
        # print((temp/65536.0)/0.00198421639 - 273.15)
        # print((vccint*3/65536.0))
        # print((vccaux*3/65536.0))
        # print((v14p0*3/65536.0))
        # print((v5p0*3/65536.0))
