public class Kata
{
    public static int Multiply(int number)
    {
        int counter = 0;

        if(number >= 0)
            counter =("" + number).Length;
        else
            counter =("" + number).Length - 1;

        for(int i = 0; i < counter; i++)
            number = number * 5;

        return number;
    }
}
