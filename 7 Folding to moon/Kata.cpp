int foldTo (double distance)
{
    int times = 0;
    float thickness = 0.0001f;
        
    if(distance <= 0)
        return -1;
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
