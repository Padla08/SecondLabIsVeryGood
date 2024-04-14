using System;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string str = "101tf11flb10001";
        Regex pattern = new Regex(@"10+1"); // Шаблон для поиска подстрок "1[0]1"

        MatchCollection matches = pattern.Matches(str);
        foreach (Match match in matches)
        {
            Console.WriteLine(match.Value);
        }
    }
}