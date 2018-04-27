function foldTo($distance)
{
    $times = 0;
    $thickness = 0.0001;

    if($distance <= 0)
        return null;
    else
    {
        while($distance > $thickness)
        {
            $thickness *= 2;
            $times++;
        }

        return $times;
    }
}
