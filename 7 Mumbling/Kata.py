import string

def accum(s):
    s = list(s)
    cadena = ""
    for x in range(0, len(s) + 1):
        print(x)

    for i in range(0, len(s) + 1):
        if i != 0:
            cadena += str('-');

        for j in range( 1, i + 1):
            if j == 1:
                cadena += s[i].upper()
            else:
                cadena += s[i].lower()

    return cadena

print(accum("aHguytT"))
