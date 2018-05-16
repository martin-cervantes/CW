def fold_to(distance):
    times = 0
    thickness = 0.0001

    if distance <= 0:
        return None
    else:
        while distance > thickness:
            thickness *= 2
            times += 1

        return times
