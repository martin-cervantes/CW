import java.util.Arrays;

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

        System.out.println(Arrays.toString(A));
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

         System.out.println(Arrays.toString(B));
    }

    public void Suma()
    {
        for(int i = 0; i < 50; i++)
        {
            C[i] = A[i] + B[i];
        }

         System.out.println(Arrays.toString(C));
    }

    public static void main(String[] args)
    {
        Kata obj = new Kata();

        obj.Pares();

        obj.Pares1();

        obj.Suma();
    }
}
