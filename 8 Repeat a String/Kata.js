function repeatIt (str, n)
{
    var cadena = "";

    if (typeof str === 'string' || str instanceof String)
    {
        for(var i = 1; i <= n; i++)
            cadena += str;
    }
    else
    {
        cadena = "Not a string";
    }

    return cadena;
}
