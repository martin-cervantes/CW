public class Accumul
{
    public static String accum(String s)
    {
        String cadena = "";

        for(int i = 0; i < s.length(); i++)
        {
            if(i != 0)
                cadena += "-";

            for(int j = 0; j <= i; j++)
                if(j == 0)
                    cadena += Character.toUpperCase(s.charAt(i));
                else
                    cadena += Character.toLowerCase(s.charAt(i));
        }

        return cadena;
    }
}
