function arrayIteration(numbers)
{
    numbers.forEach(number => {
        if(number % 3 === 0)
        {
            console.log(number);
        }
    });
}
