public static class Kata
{
    public static string repeatStr(int n, string s)
    {
        String cadena = "";

        for(int i=1; i<=n; i++)
            cadena += s;

        return cadena;
    }
}
