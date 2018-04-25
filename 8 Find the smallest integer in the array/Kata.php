function smallestInteger ($arr)
{
    $lower = $arr[0];
        for($i = 0; $i < count($arr); $i++)
            if($arr[$i] < $lower)
                $lower = $arr[$i];

        return $lower;
}
