def find_smallest_int(arr):
    lower = arr[0]
    for i in range(0, len(arr)):
        if arr[i] < lower:
            lower = arr[i]

    return lower
