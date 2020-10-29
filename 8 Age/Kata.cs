public class Kata
{
    public static void Bar(int age)
    {
        if(age < 18)
            Console.WriteLine("Sorry, you cannot enter the venue");
        else if(age < 21)
            Console.WriteLine("You can enter, but cannot drink");
        else
            Console.WriteLine("You can enter and drink");
    }

    public static void Age(int age)
    {
        if(age < 0)
            Console.WriteLine("Error");
        else if(age == 21)
            Console.WriteLine("happy 21st birthday!!");
        else if(age % 2 != 0)
            Console.WriteLine("Your age is odd!!");
        else if(age % Math.sqrt(age) == 0)
            Console.WriteLine("Your age is a perfect square!!");
    }
}
