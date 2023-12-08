# First export the columns customers.name and customers.phone into data.txt

INPUT_FILE = 'data.txt'


def readfile(filename):
    with open(filename) as f:
        lines = f.readlines()
        lines = [line.strip() for line in lines]
        return lines


mnmap = {
    1: ' ',
    2: 'ABC',
    3: 'DEF',
    4: 'GHI',
    5: 'JKL',
    6: 'MNO',
    7: 'PQRS',
    8: 'TUV',
    9: 'WXYZ',
}


def getnumber(name):
    n = ''
    for c in name:
        for k, v in mnmap.items():
            if c in v:
                n += str(k)
                break
    return n


lines = readfile(INPUT_FILE)
for line in lines:
    [a, phone] = line.split('\t')
    name = a.upper()
    phonenr = phone.replace('-', '')

    parts = name.split(' ')
    for part in parts:
        number = getnumber(part)
        if number.startswith(phonenr):
            print(name, phone)

print('done')

# Solution: SAM GUTTENBERG 488-836-2374
