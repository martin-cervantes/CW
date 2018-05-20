using System;

public class Accumul
{
	  public static String Accum(string s)
    {
        String cadena = "";

        for(int i = 0; i < s.Length; i++)
        {
            if(i != 0)
                cadena += "-";

            for(int j = 0; j <= i; j++)
            {
                if(j == 0)
                    cadena += s[i].ToString().ToUpper();
                else
                    cadena += s[i].ToString().ToLower();
            }
        }

        return cadena;
    }
}
