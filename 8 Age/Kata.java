class Kata
{
    public static void Bar(int age)
    {
        if(age < 18)
            System.out.println("Sorry, you cannot enter the venue");
        else if(age < 21)
            System.out.println("You can enter, but cannot drink");
        else
            System.out.println("You can enter and drink");
    }

    public static void Age(int age)
    {
        if(age < 0)
            System.out.println("Error");
        else if(age === 21)
            System.out.println("happy 21st birthday!!");
        else if(age % 2 !== 0)
            System.out.println("Your age is odd!!");
        else if(age % Math.sqrt(age) == 0)
            System.out.println("Your age is a perfect square!!");
    }
}
