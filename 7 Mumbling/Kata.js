function accum(s)
{
    s = s.split('');
	var cadena = "";

    for(var i = 0; i < s.length; i++)
    {
        if(i != 0)
            cadena += "-";

        for(var j = 0; j <= i; j++)
            if(j == 0)
                cadena += s[i].toUpperCase();
            else
                cadena += s[i].toLowerCase();
    }

    return cadena;
}
