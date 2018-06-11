class Kata
{
    public static int factorial(int num)
    {
        int result = 1;

        for(int i = 2; i <= num; i++)
            result *= i;

        return result;
    }
}
