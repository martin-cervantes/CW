public class Kata
{
    public static String repeatStr(final int repeat, final String string)
    {
        String cadena = "";

        for(int i=1; i<=repeat; i++)
            cadena += string;

        return cadena;
    }
}
