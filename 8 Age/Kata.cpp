void Bar(int age)
{
    if(age < 18)
        cout << "Sorry, you cannot enter the venue";
    else if(age < 21)
        cout << "You can enter, but cannot drink";
    else
        cout << "You can enter and drink";
}

void Age(int age)
{
    if(age < 0)
        cout << "Error";
    else if(age == 21)
        cout << "happy 21st birthday!!";
    else if(age % 2 != 0)
        cout << "Your age is odd!!";
    else if(age % Math.sqrt(age) == 0)
        cout << "Your age is a perfect square!!";
}
