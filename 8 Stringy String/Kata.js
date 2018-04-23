function stringy(size)
{
    var str = "";

    for(var i = 1; i <= size; i++)
        if(i % 2 == 0)
            str += "0";
        else
            str += "1";

    return str;
}
