function arrayIteration($numbers)
{
    foreach($numbers as $number)
    {
        if($number % 3 === 0)
        {
            echo $number;
        }
    }
}
