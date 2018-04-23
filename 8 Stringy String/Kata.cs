public class Kata
{
    public static string Stringy(int size)
    {
        string chars = "";

        for(int i = 1; i <= size; i++)
        {
            if(i % 2 == 0)
                chars += "0";
            else
                chars += "1";
        }

        return chars;
    }
}
