public class Kata
{
    public static void arrayIteration(int[] numbers)
    {
        for(int number: numbers)
        {
            if(number % 3 == 0)
            {
                System.out.println(number);
            }
        }
    }
}
