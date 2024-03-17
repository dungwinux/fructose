def conv(c: str) -> int:
    a = [chr(ascii) for ascii in list(range(ord('A'), ord('Z')+1))]
    n = [chr(ascii) for ascii in list(range(ord('0'), ord('9')+1))]
    match c:
        case x if x in a:
            return ord(c) - ord('A') + 10
        case x if x in n:
            return ord(c) - ord('0')
        case '_':
            return 36
        case '{':
            return 37
        case '}':
            return 38

def xlat(s: str) -> list[int]:
    return [conv(c) for c in s.upper()]

def nibble_swap(x: int) -> int:
    x = x & 0xFF
    return (x >> 4) | ((x << 4) & 0xFF)

def xlat2(s: str, init: int) -> str:
    x = init
    return [(x := (nibble_swap(x + i) + 0x90) & 0xFF) for i in xlat(s)]

def generate_table_entry(c: str) -> str:
    x = conv(c)
    return ".empty" if x is None else ".part{}".format(x)

def generate_table() -> list[str]:
    d = [ (i, generate_table_entry(chr(i))) for i in range(256)]
    return [x for x in sorted(d)]

import sys

if __name__ == "__main__":
    print(xlat2(sys.argv[-1], 0xc3))
    for _, l in generate_table():
        print("  dd      {}-.inst".format(l))
