string CalculateAge(int birth, int yearTo)
{
    if(yearTo == birth)
        return "You were born this very year!";
    else if(yearTo - birth == 1)
        return "You are 1 year old.";
    else if(birth - yearTo == 1)
        return "You will be born in 1 year.";
    else if(yearTo > birth)
        return "You are " + (yearTo - birth) + " years old.";
    else
        return "You will be born in " + (birth - yearTo) + " years.";
}
