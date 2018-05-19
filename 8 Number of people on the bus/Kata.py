def number(peopleListInOut):
    still = 0

    for stops in peopleListInOut:
        still += stops[0]
        still -= stops[1]

    return still
