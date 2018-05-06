def multiply(number):
    counter = 0

    if number >= 0:
        counter = len("" + str(number))
    else:
        counter = len("" + str(number)) - 1

    for i in range(0, len(counter)):
        number = number * 5

    return number
