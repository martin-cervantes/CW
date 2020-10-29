function Bar(age)
{
    if(age < 18)
        alert("Sorry, you cannot enter the venue");
    else if(age < 21)
        alert("You can enter, but cannot drink");
    else
        alert("You can enter and drink");
}

function Age(age)
{
    if(age < 0)
        alert("Error");
    else if(age === 21)
        alert("happy 21st birthday!!");
    else if(age % 2 !== 0)
        alert("Your age is odd!!");
    else if(age % Math.sqrt(age) == 0)
        alert("Your age is a perfect square!!");
}
