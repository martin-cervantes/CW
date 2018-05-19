
using System;
using System.Collections.Generic;

public class Kata
    {
        public static int countPassengers(List<int[]> peopleListInOut)
        {
            int still = 0;

            foreach(int[] stops in peopleListInOut)
            {
                still += stops[0];
                still -= stops[1];
            }

            return still;
        }
    }
