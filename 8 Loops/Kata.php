function loops()
{
	echo "PRINTING ALL NUMBERS BETWEEN -10 AND 19";
	$counter = -10;

	while($counter < 20){
		echo $counter;
		$counter++;
	}

	echo "PRINTING ALL EVEN BETWEEN 10 AND 40";
	$counter = 10;

	while($counter <= 40){
		echo $counter;
		$counter+=2;
	}

	// while($counter <= 40){
	// 	if($counter % 2 == 0){
	// 		echo $counter;
	// 	}
	// 	$counter+=1;
	// }

	echo "PRINTING ALL ODD NUMBERS BETWEEN 300 AND 333";
	$counter = 300;

	while($counter <= 333){
		if($counter % 2 != 0){
			echo $counter;
		}
		$counter+=1;
	}




	echo "PRINTING ALL NUMBERS DIVISIBLE BY 5 AND 3 BETWEEN 5 AND 50";
	$counter = 5;

	while($counter <= 50){
		if($counter % 5 == 0 && $counter % 3 == 0){
			$echo counter;
		}
		counter+=1;
	}
}
