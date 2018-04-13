function  calculateAge(birth, count)
{
    var year = 0;

    if(count == birth)
        return "You were born this very year!";
    else if(count - birth == 1)
        return "You are 1 year old.";
    else if(birth - count == 1)
        return "You will be born in 1 year.";
    else if(count > birth)
        return "You are " + (count - birth) + " years old.";
    else if(count < birth)
        return "You will be born in " + (birth - count) + " years.";
}
