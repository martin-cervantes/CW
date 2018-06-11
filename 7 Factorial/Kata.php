function factorial($num)
{
    $result = 1;

    for($i = 2; $i <= $num; $i++)
        $result *= $i;

    return $result;
}
