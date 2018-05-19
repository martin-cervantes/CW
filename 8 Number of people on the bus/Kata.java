import java.util.ArrayList;

class Kata
{
    public static int countPassengers(ArrayList<int[]> peopleListInOut)
    {
        int still = 0;

        for(int[] stops: peopleListInOut)
        {
            still += stops[0];
            still -= stops[1];
        }

        return still;
    }
}
