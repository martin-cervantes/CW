function accum(s)
{
    s = s.split('');
	let cadena = "";

    for(let i = 0; i < s.length; i++)
    {
        if(i != 0)
            cadena += "-";

        for(let j = 0; j <= i; j++)
            if(j == 0)
                cadena += s[i].toUpperCase();
            else
                cadena += s[i].toLowerCase();
    }

    return cadena;
}
