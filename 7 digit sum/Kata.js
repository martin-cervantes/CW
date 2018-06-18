function digit_sum(x)
{
    let total = 0;
    while(x > 0)
        total += x % 10;
        x = x / 10;
        console.log(x);
    return total;
}
