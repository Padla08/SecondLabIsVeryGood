using System;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string str = "101001f0110a1";
        Regex pattern = new Regex("10+{1,3}1");
        Regex pattern2 = new Regex("10+{2,3}1");

        MatchCollection matches = pattern.Matches(str);
        foreach (Match match in matches)
        {
            Console.WriteLine(match.Value);
        }

        MatchCollection matches2 = pattern2.Matches(str);
        foreach (Match match in matches2)
        {
            Console.WriteLine(match.Value);
        }
    }
}