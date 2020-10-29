def CalculateAge(birth, yearTo)
    if(yearTo == birth)
        return "You were born this very year!";
    elsif(yearTo - birth == 1)
        return "You are 1 year old.";
    elsif(birth - yearTo == 1)
        return "You will be born in 1 year.";
    elsif(yearTo > birth)
        return "You are #{yearTo - birth} years old.";
    else
        return "You will be born in #{birth - yearTo} years.";
    end
end
