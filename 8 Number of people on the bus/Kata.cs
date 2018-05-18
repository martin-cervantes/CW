
using System;
using System.Collections.Generic;

public class Kata
    {
        public static int Number(List<int[]> peopleListInOut)
        {
            int still = 0;

            foreach(int[] inOut in peopleListInOut)
            {
                still += inOut[0];
                still -= inOut[1];
            }

            return still;
        }
    }
