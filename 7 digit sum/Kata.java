public class Kata
{
    public static void digit_sum(int x)
    {
        int total = 0;
        while(x > 0)
            total += x % 10;
            x = x / 10;
            Console.WriteLine(x);
        return total;
    }
}
