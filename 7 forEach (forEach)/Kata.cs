public class Kata
{
    public static void arrayIteration(int[] numbers)
    {
        foreach(int number in numbers)
        {
            if(number % 3 == 0)
            {
                System.out.println(number);
            }
        }
    }
}
