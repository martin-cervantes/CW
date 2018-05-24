using System;
using System.Linq;

public static class Kata
{
    public static int Sum(int[] numbers)
    {
        int min = 0, max = 0, sum = 0;

        if(numbers.Length < 3)
            return 0;

        for(int i = 0; i < numbers.Length; i++)
        {
            if(numbers[i] > max)
                max = numbers[i];


            if(numbers[i] < min)
                min = numbers[i];


            sum += numbers[i];
        }

        sum -= max;
        sum -= min;

        return sum;
    }
}
