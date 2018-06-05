public static class Kata
{
    public static string while_if()
    {
        int count = 0;

        if(count < 5)
          System.out.println("Hello, I am an if statement and count is" + count);

        while(count < 5)
        {
            System.out.println("Hello, I am a while and count is" + count);
            count += 1;
        }
    }
}
