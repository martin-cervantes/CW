
public class Kata
{
    int index = 0;
    int[] A = new int[50];
    int[] B = new int[50];
    int[] C = new int[50];

    public void Pares()
    {
        index = 0;

        for(int i = 1; i <= 100; i++)
        {
            if(i % 2 == 0)
            {
                A[index] = i;
                index++;
            }
        }

        Console.WriteLine(Arrays.ToString(A));
    }

    public void Pares1()
    {
        index = 0;

        for(int i = 101; i <= 200; i++)
        {
            if(i % 2 == 0)
            {
                B[index] = i;
                index++;
            }
        }

         Console.WriteLine(Arrays.ToString(B));
    }

    public void Suma()
    {
        for(int i = 0; i < 50; i++)
        {
            C[i] = A[i] + B[i];
        }

         Console.WriteLine(Arrays.ToString(C));
    }

    public static void main(String[] args)
    {
        Kata obj = new Kata();

        obj.Pares();

        obj.Pares1();

        obj.Suma();
    }
}
