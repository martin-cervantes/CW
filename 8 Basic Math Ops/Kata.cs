public static class Kata
{
    public static double basicOp(char op, double val1, double val2)
    {
        if(op == '+')
            return val1 + val2;
        if(op == '-')
            return val1 - val2;
        if(op == '*')
            return val1 * val2;
        if(op == '/')
            return val1 / val2;
        else
            return 0;
    }
}
