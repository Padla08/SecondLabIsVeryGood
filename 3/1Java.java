import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static int sumDigits(int num) {
        int sum = 0;
        while (num > 0) {
            sum += num % 10;
            num /= 10;
        }
        return sum;
    }

    public static List<Integer> findNumbers(List<Integer> arr) {
        List<Integer> result = new ArrayList<>();
        for (int num : arr) {
            if (sumDigits(num) < 10) {
                result.add(num);
            }
        }
        return result;
    }

    public static void main(String[] args) {
        Scanner scan