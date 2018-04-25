findSmallestInt(args)
{
    var lower = args[0];
    for(var i = 0; i < args.length; i++)
        if(args[i] < lower)
            lower = args[i];

    return lower;
}
