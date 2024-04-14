using System;
using System.Collections.Generic;

class Program
{
    static int RomanToInt(string s)
    {
        Dictionary<char, int> romanValues = new Dictionary<char, int>
        {
            {'I', 1},
            {'V', 5},
            {'X', 10},
            {'L', 50},
            {'C', 100},
            {'D', 500},
            {'M', 1000},
			{'i', 1},
            {'v', 5},
            {'x', 10},
            {'l', 50},
            {'c', 100},
            {'d', 500},
            {'m', 1000}
        };

        int result = 0;
        int prevValue = 0;

        for (int i = s.Length - 1; i >= 0; --i)
        {
            int currentValue = romanValues[s[i]];
            if (currentValue < prevValue)
            {
                result -= currentValue;
            }
            else
            {
                result += currentValue;
            }
            prevValue = currentValue;
        }

        return result;
    }

    static void Main()
    {
        Console.Write("Enter a Roman numeral: ");
        string romanNumber = Console.ReadLine();

        int arabicNumber = RomanToInt(romanNumber);
        Console.WriteLine("The equivalent Arabic numeral is: " + arabicNumber);
    }
}