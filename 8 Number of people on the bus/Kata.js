let number = function(peopleListInOut)
{
    let still = 0;

    for(let stops of peopleListInOut)
    {
        still += stops[0];
        still -= stops[1];
    }

    return still;
}
