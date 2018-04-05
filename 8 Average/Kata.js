function findAverage(array)
{
    var avg = 0;

    if(array.length == 0)
        return 0;

    for(var i = 0; i < array.length; i++)
        avg += array[i];

    avg /= array.length;
    
    return avg;
}
