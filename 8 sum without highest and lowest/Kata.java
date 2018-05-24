public class Kata
{
  public static int sum(int[] numbers)
  {
      int max = 0, min = 0, sum = 0;


      if(numbers.length < 3)
          return 0;

      for(int i = 0; i < numbers.length; i++)
      {
          if(numbers[i] > max)
              max = i;

          if(numbers[i] < min)
              min = i;

          sum += numbers[i];
      }

      sum -= max;
      sum -= min;

      return sum;
  }
}
