import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Map<Character, Integer> romanValues = new HashMap<>();
        romanValues.put('I', 1);
        romanValues.put('V', 5);
        romanValues.put('X', 10);
        romanValues.put('L', 50);
        romanValues.put('C', 100);
        romanValues.put('D', 500);
        romanValues.put('M', 1000);
		romanValues.put('i', 1);
        romanValues.put('v', 5);
        romanValues.put('x', 10);
        romanValues.put('l', 50);
        romanValues.put('c', 100);
        romanValues.put('d', 500);
        romanValues.put('m', 1000);

        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a Roman numeral: ");
        String romanNumber = scanner.nextLine();

        int arabicNumber = romanToInt(romanNumber, romanValues);
        System.out.println("The equivalent Arabic numeral is: " + arabicNumber);
    }

    public static int romanToInt(String s, Map<Character, Integer> romanValues) {
        int result = 0;
        int prevValue = 0;

        for (int i = s.length() - 1; i >= 0; --i) {
            int currentValue = romanValues.get(s.charAt(i));
            if (currentValue < prevValue) {
                result -= currentValue;
            } else {
                result += currentValue;
            }
            prevValue = currentValue;
        }

        return result;
    }
}