function while_if()
{
    var count = 0;

    if(count < 5)
      Console.log("Hello, I am an if statement and count is" + count);

    while(count < 5)
    {
        Console.log("Hello, I am a while and count is" + count);
        count += 1;
    }
}
