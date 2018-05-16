public class PaperFolder
{
    public static Long fold(Double distance)
    {
        Long times = 0;
        float thickness = 0.0001f;

        if(distance <= 0)
            return null;
        else
        {
            while(distance > thickness)
            {
                thickness *= 2;
                times++;
            }

            return times;
        }
    }
}
