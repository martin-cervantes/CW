def calculate_age(year_of_birth, current_year):
    if current_year == year_of_birth:
        return "You were born this very year!"
    elif current_year - year_of_birth == 1:
        return "You are 1 year old."
    elif year_of_birth - current_year == 1:
        return "You will be born in 1 year."
    elif current_year > year_of_birth:
        return "You are " + str(current_year - year_of_birth) + " years old."
    elif current_year < year_of_birth:
        return "You will be born in " + str(year_of_birth - current_year) + " years."
