function bmi($weight, $height)
{
    var $bmi = $weight/($height * $height);

    if($bmi <= 18.5)
        return "Under$weight";
    else if($bmi <= 25.0)
        return "Normal";
    else if($bmi <= 30.0)
        return "Over$weight";
    else
        return "Obese";
}
