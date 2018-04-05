double findAverage(double* array, int length)
{
    double avg = 0;

    if(length == 0)
        return 0;

    for(int i = 0; i < length; i++)
        avg += array[i];

    avg /= length;

    return avg;
}
