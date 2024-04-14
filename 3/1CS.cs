using System;
using System.Linq;

class Program
{
    static int SumDigits(int num)
    {
        int sum = 0;
        while (num > 0)
        {
            sum += num % 10;
            num /= 10;
        }
        return sum;
    }

    static void Main()
    {
        Console.Write("Enter numbers separated by space: ");
        string input = Console.ReadLine();
        int[] arr = input.Split(' ').Select(int.Parse).ToArray();
        var result = arr.Where(num => SumDigits(num) < 10);
        Console.WriteLine(string.Join(", ", result));
    }
}