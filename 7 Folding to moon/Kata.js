function foldTo(distance)
{
    let times = 0;
    let thickness = 0.0001;

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
