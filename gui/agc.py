def disassemble(words, first_bank=0):
    extended = False
    banksum = 0
    lines = [''] * 6 * 1024
    buggers = []
    banks = []
    health = []

    for bank_idx in range(6):
        banksum = 0
        parity_good = True
        bs2 = 0
        bs3 = 0
        bsn = 0
        last_sum = False
        if words[bank_idx * 0o2000] != 0:
            summing = True
        else:
            summing = False
            banks.append(0)
            buggers.append(0)

        for s in range(0o2000):
            word_idx = bank_idx*0o2000 + s
            raw_word = words[word_idx]
            word = ((raw_word >> 1) & 0o40000) | (raw_word & 0o37777)
            parity = (raw_word >> 14) & 1
            word_parity = calc_parity(raw_word)

            if not summing:
                word_color = 'gray' if word == 0 else 'red'
                parity_color = 'gray' if parity == 0 else 'red'
                lines[word_idx] += '<span style="color:%s;">%05o</span>&nbsp;' % (word_color, word)
                lines[word_idx] += '<span style="color:%s;">%o</span>' % (parity_color, parity)
                continue

            lines[word_idx] += '<span style="color:blue;">%05o</span>&nbsp;' % word

            if parity == word_parity:
                parity_color = 'blue'
            else:
                parity_color = 'red'
                parity_good = False

            lines[word_idx] += '<span style="color:%s;">%o</span>&nbsp;&nbsp;' % (parity_color, parity)

            banksum = add(banksum, word)
            if last_sum or s == 0o1777:
                bank_no = banksum ^ 0o77777 if (banksum & 0o40000) else banksum
                banks.append(bank_no)
                buggers.append((word << 3) | parity)
                summing = False
                op_str = 'BNKSUM'
                arg_str = '%o' % bank_no
            else:
                op_str, arg_str, extended = disassemble_instruction(word, extended)

            op_str += '&nbsp;' * (7 - len(op_str))

            lines[word_idx] += '<span style="color:green;">%s</span>' % op_str
            if arg_str:
                lines[word_idx] += '<span style="color:magenta;">%s</span>' % arg_str

            if (bank_idx == 2) and (word == 0o4000 + s):
                bs2 += 1
            else:
                bs2 = 0

            if (bank_idx == 3) and (word == 0o6000 + s):
                bs3 += 1
            else:
                bs3 = 0

            if word == 0o2000 + s:
                bsn += 1
            else:
                bsn = 0
            
            if bs2 >= 2 or bs3 >= 2 or bsn >= 2:
                last_sum = True

        health.append(parity_good)

    # Now inspect banks
    best_module = 0
    best_matches = 0
    possible_modules = [
        list(range(0o00, 0o06)),
        list(range(0o06, 0o14)),
        list(range(0o14, 0o22)),
        list(range(0o22, 0o30)),
        list(range(0o30, 0o36)),
        list(range(0o36, 0o44)),
    ]

    for i,possible_module in enumerate(possible_modules):
        matches = 0
        for a, b in zip(possible_module, banks):
            if a == b:
                matches += 1

        if matches > best_matches:
            best_matches = matches
            best_module = i

    for i,bank in enumerate(banks):
        if bank != possible_modules[best_module][i]:
            health[i] = False

    banks = possible_modules[best_module]

    for i in range(len(lines)):
        bank_idx = i // 0o2000
        fb = banks[bank_idx]
        s = i % 0o2000

        if fb == 2 or fb == 3:
            addr_str = '&nbsp;&nbsp;&nbsp;%04o' % (s + fb*0o2000)
        else:
            addr_str = '%02o,%04o' % (fb, s + 0o2000)
        lines[i] = ('<span style="color:gray;">%s</span>&nbsp;' % addr_str) + lines[i]

    return lines, buggers, banks, health

def disassemble_instruction(word, extended):
    op_str = ''
    arg_str = '%04o' % (word & 0o7777)
    sq = word >> 12
    qc = (word >> 10) & 0o3
    qc10 = (word >> 9) & 0o7
    if not extended:
        if word == 0o00003:
            op_str = 'RELINT'
            arg_str = ''
        elif word == 0o00004:
            op_str = 'INHINT'
            arg_str = ''
        elif word == 0o00006:
            op_str = 'EXTEND'
            arg_str = ''
            extended = True
        elif word == 0o50017:
            op_str = 'RESUME'
            arg_str = ''
            extended = True
        elif sq == 0:
            op_str = 'TC'
        elif sq == 1:
            if qc == 0:
                op_str = 'CCS'
                arg_str = '%04o' % (word & 0o1777)
            else:
                op_str = 'TCF'
        elif sq == 2:
            arg_str = '%04o' % (word & 0o1777)
            if qc == 0:
                op_str = 'DAS'
            elif qc == 1:
                op_str = 'LXCH'
            elif qc == 2:
                op_str = 'INCR'
            elif qc == 3:
                op_str = 'ADS'
        elif sq == 3:
            op_str = 'CA'
        elif sq == 4:
            op_str = 'CS'
        elif sq == 5:
            arg_str = '%04o' % (word & 0o1777)
            if qc == 0:
                op_str = 'INDEX'
            elif qc == 1:
                op_str = 'DXCH'
                arg_str = '%04o' % ((word & 0o1777) - 1)
            elif qc == 2:
                op_str = 'TS'
            elif qc == 3:
                op_str = 'XCH'
        elif sq == 6:
            op_str = 'AD'
        elif sq == 7:
            op_str = 'MASK'
    else:
        extended = False
        if sq == 0:
            arg_str = '%02o' % (word & 0o77)
            if qc10 == 0:
                op_str = 'READ'
            elif qc10 == 1:
                op_str = 'WRITE'
            elif qc10 == 2:
                op_str = 'RAND'
            elif qc10 == 3:
                op_str = 'WAND'
            elif qc10 == 4:
                op_str = 'ROR'
            elif qc10 == 5:
                op_str = 'WOR'
            elif qc10 == 6:
                op_str = 'RXOR'
            elif qc10 == 7:
                op_str = 'EDRUPT'
                arg_str = '%04o' % (word & 0o7777)
        elif sq == 1:
            if qc == 0:
                op_str = 'DV'
                arg_str = '%04o' % (word & 0o1777)
            else:
                op_str = 'BZF'
        elif sq == 2:
            arg_str = '%04o' % (word & 0o1777)
            if qc == 0:
                op_str = 'MSU'
            elif qc == 1:
                op_str = 'QXCH'
            elif qc == 2:
                op_str = 'AUG'
            elif qc == 3:
                op_str = 'DIM'
        elif sq == 3:
            op_str = 'DCA'
            arg_str = '%04o' % ((word & 0o1777) - 1)
        elif sq == 4:
            op_str = 'DCS'
            arg_str = '%04o' % ((word & 0o1777) - 1)
        elif sq == 5:
            op_str = 'INDEX'
            extended = True
        elif sq == 6:
            if qc == 0:
                op_str = 'SU'
                arg_str = '%04o' % (word & 0o1777)
            else:
                op_str = 'BZMF'
        elif sq == 7:
            op_str = 'MP'

    return op_str, arg_str, extended

def calc_parity(w):
    p = 1
    for i in range(15):
        if i == 14:
            i += 1

        if (w & (1 << i)):
            p ^= 1

    return p

def add(x, y):
    x = ((x & 0o40000) << 1) | x
    y = ((y & 0o40000) << 1) | y
    u = x + y
    if u & 0o200000:
        u = (u & 0o177777) + 1
    if (u & 0o140000) == 0o040000:
        u += 1
    elif (u & 0o140000) == 0o100000:
        u -= 1

    u = ((u & 0o100000) >> 1) | (u & 0o37777)
    return u
