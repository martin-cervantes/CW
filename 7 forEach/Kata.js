function arrayIteration(numbers)
{
    numbers.forEach(function(number){
        if(number % 3 === 0)
        {
            console.log(number);
        }
    });
}
