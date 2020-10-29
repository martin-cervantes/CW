class Kata
{
    public float average(float[] numbers)
    {
        float total = 0;

        for(int i = 0; i < numbers.Length; i++)
            total += numbers[i];

        total = total / numbers.Length;

        return total;
    }

    public float get_average(float[] student)
    {
        float homework = average(student["homework"]);
        float quizzes = average(student["quizzes"]);
        float tests = average(student["tests"]);

        return homework * 0.1 + quizzes * 0.3 + tests * 0.6;
    }

    public String get_letter_grade(float score)
    {
        if(score >= 90)
            return "A";
        else if(score >= 80)
            return "B";
        else if(score >= 70)
            return "C";
        else if(score >= 60)
            return "D";
        else
            return "F";
    }
}
