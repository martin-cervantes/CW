function accum($s)
{
    $s = str_split($s);
	  $cadena = "";

    for($i = 0; $i < sizeof($s); $i++)
    {
        if($i != 0)
            $cadena += "-";

        for($j = 0; $j <= $i; $j++)
            if($j == 0)
                $cadena += strtoupper($s[$i]);
            else
                $cadena += strtolower($s[$i]);
    }

    return $cadena;
}
