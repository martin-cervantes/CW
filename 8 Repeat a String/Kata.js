function repeatIt (str, n)
{
    let cadena = "";

    if (typeof str === 'string' || str instanceof String)
    {
        for(let i = 1; i <= n; i++)
            cadena += str;
    }
    else
    {
        cadena = "Not a string";
    }

    return cadena;
}
