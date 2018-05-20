def accum(s):
    s = list(s)
	cadena = ""

    for i in range(0,len(s)):
        if i != 0:
            cadena += "-";

        for j in range( 0, i):
            if j == 0:
                cadena += s[i].upper()
            else:
                cadena += s[i].lower()


    return cadena
