public class Kata
{
    public static int findSmallestInt(int[] args)
    {
        int lower = args[0];
        for(int i = 0; i < args.length; i++)
            if(args[i] < lower)
                lower = args[i];

        return lower;
    }
}
