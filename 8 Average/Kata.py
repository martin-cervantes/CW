def find_average(array):
    avg = 0

    if len(array) == 0:
        return 0;

    for i in range(0, len(array)):
        avg = avg + array[i]

    avg = avg / len(array)

    return avg;
