public class Kata
{
    public static String repeatString(final Object toRepeat, final int n)
    {
        String cadena = "";

        if(toRepeat.getClass() == String)
            for(int i = 1; i <= n; i++)
                cadena += toRepeat;

        return cadena;
    }
}
