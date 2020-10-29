function Bar($age)
{
    if($age < 18)
        echo "Sorry, you cannot enter the venue";
    else if($age < 21)
        echo "You can enter, but cannot drink";
    else
        echo "You can enter and drink";
}

function Age($age)
{
    if($age < 0)
        echo "Error";
    else if($age === 21)
        echo "happy 21st birthday!!";
    else if($age % 2 !== 0)
        echo "Your age is odd!!";
    else if($age % Math.sqrt($age) == 0)
        echo "Your age is a perfect square!!";
}
