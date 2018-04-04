public static class Kata
{
    public static string bonus_time(int salary, bool bonus)
    {
        if(bonus) salary = salary * 10;

        return "$"+salary;
    }
}
