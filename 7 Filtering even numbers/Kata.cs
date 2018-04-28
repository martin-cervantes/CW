using System;
using System.Collections.Generic;
using System.Linq;

public class Kata
{
    public static List<int> FilterOddNumber(List<int> listOfNumbers)
    {
        foreach (int num in listOfNumbers.Reverse<int>())
            if (num % 2 == 0)
                listOfNumbers.Remove(num);

        return listOfNumbers;
    }
}
