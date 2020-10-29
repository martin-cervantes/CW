void loops()
{
	cout << "PRINTING ALL NUMBERS BETWEEN -10 AND 19";
	int counter = -10;

	while(counter < 20){
		cout << counter;
		counter++;
	}

	cout << "PRINTING ALL EVEN BETWEEN 10 AND 40";
	int counter = 10;

	while(counter <= 40){
		if(counter % 2 == 0){
			cout << counter;
		}
		counter += 1;
	}

	cout << "PRINTING ALL ODD NUMBERS BETWEEN 300 AND 333";
	int counter = 300;

	while(counter <= 333){
		if(counter % 2 != 0){
			cout << counter;
		}
		counter += 1;
	}

	cout << "PRINTING ALL NUMBERS DIVISIBLE BY 5 AND 3 BETWEEN 5 AND 50";
	int counter = 5;

	while(counter <= 50){
		if(counter % 5 == 0 && counter % 3 == 0){
			cout << counter;
		}
		counter += 1;
	}
}
