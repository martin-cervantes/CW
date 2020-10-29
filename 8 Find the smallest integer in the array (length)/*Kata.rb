def find_smallest_int(arr)
    lower = arr.first

    for i in (0...arr.length)
        if arr[i] < lower
						lower = arr[i]
				end
    end

    lower
end
