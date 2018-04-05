class Kata
{
    public static double FindAverage(double[] array)
    {
        double avg = 0;

        if(array.Length == 0)
            return 0;

        for(int i = 0; i < array.Length; i++)
            avg = avg + array[i];

        avg = avg / array.Length;

        return avg;
    }
}
