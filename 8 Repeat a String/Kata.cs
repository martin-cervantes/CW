using System;

public class Kata
{
  	public static string RepeatString(object toRepeat, int n)
  	{
        string cadena = "";

        if(toRepeat.GetType() == typeof(String))
        {
    	      for(var i = 1; i <= n; i++)
                cadena += toRepeat;
        }
        else
        {
            cadena = "Not a string";
        }

        return cadena;
  	}
}
