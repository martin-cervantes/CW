function findAverage($array)
{
    $avg = 0;

    if(count($array) == 0)
        return 0;

    for($i = 0; $i < count($array); $i++)
        $avg += $array[$i];

    $avg /= count($array);

    return $avg;
}
