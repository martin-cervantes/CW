findSmallestInt(args)
{
    let lower = args[0];
    for(let i = 0; i < args.length; i++)
        if(args[i] < lower)
            lower = args[i];

    return lower;
}
