var number = function(peopleListInOut)
{
    var still = 0;

    for(var stops of peopleListInOut)
    {
        still += stops[0];
        still -= stops[1];
    }

    return still;
}
