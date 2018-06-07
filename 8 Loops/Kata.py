def loops()
	print("PRINTING ALL NUMBERS BETWEEN -10 AND 19")
	counter = -10

	while counter < 20
		print(counter)
		counter += 1


	print("PRINTING ALL EVEN BETWEEN 10 AND 40")
	counter = 10

	while counter <= 40
		print(counter)
		counter +=2


	#  while counter <= 40
	#  	if counter % 2 == 0
	#  		print(counter)
	#
	#  	counter +=1
	#

	print("PRINTING ALL ODD NUMBERS BETWEEN 300 AND 333")
	counter = 300

	while counter <= 333
		if counter % 2 != 0
			print(counter)

		counter+=1





	print("PRINTING ALL NUMBERS DIVISIBLE BY 5 AND 3 BETWEEN 5 AND 50")
	counter = 5

	while counter <= 50
		if counter % 5 == 0 and counter % 3 == 0
			print(counter)

		counter+=1
