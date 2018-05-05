public class Kata
{
    public static String bonusTime(final int salary, final boolean bonus)
    {
        if(bonus)
        salary = salary * 10;

        return "$" + salary;
    }
}
