public class Kata
{
    public static int getAge(final String herOld)
    {
        int age = Character.getNumericValue(herOld.charAt(0));

        return age;
    }
}
