public class Kata
{
    public static double findAverage(int[] array)
    {
        double avg = 0;

        if(array.length == 0)
            return 0;

        for(int i = 0; i < array.length; i++)
            avg += array[i];

        avg /= array.length;

        return avg;
  }
}
