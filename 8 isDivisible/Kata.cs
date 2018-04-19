public class Kata
{
	public static bool isDivisible(long n, long x, long y)
    {
		if(n % x == 0 && n % y == 0)
        return true;

        return false;
	}
}
