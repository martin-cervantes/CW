class Kata
{
    public static void loops()
    {
    	System.out.println("PRINTING ALL NUMBERS BETWEEN -10 AND 19");
    	int counter = -10;

    	while(counter < 20){
    		System.out.println(counter);
    		counter++;
    	}

    	System.out.println("PRINTING ALL EVEN BETWEEN 10 AND 40");
    	int counter = 10;

    	while(counter <= 40){
    		System.out.println(counter);
    		counter+=2;
    	}

    	// while(counter <= 40){
    	// 	if(counter % 2 == 0){
    	// 		System.out.println(counter);
    	// 	}
    	// 	counter+=1;
    	// }

    	System.out.println("PRINTING ALL ODD NUMBERS BETWEEN 300 AND 333");
    	int counter = 300;

    	while(counter <= 333){
    		if(counter % 2 != 0){
    			System.out.println(counter);
    		}
    		counter+=1;
    	}




    	System.out.println("PRINTING ALL NUMBERS DIVISIBLE BY 5 AND 3 BETWEEN 5 AND 50");
    	int counter = 5;

    	while(counter <= 50){
    		if(counter % 5 == 0 && counter % 3 == 0){
    			System.out.println(counter);
    		}
    		counter+=1;
    	}
    }
}
