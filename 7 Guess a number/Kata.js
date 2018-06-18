function Guess(number)
{
    let secretNumber = Math.floor((Math.random() * 10) + 1);

    let guess = Number(prompt("Guess a number"));

    if(guess === secretNumber)
        alert("You got it right!!");
    else if(guess > secretNumber)
        alert("Too high. Guess again!!");
    else
        alert("Too low. Guess again!!");
}
