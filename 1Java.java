import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {
        String str = "101tf11flb10001";
        Pattern pattern = Pattern.compile("10+1"); // Шаблон для поиска подстрок "1[0]1"

        Matcher matcher = pattern.matcher(str);
        while (matcher.find()) {
            System.out.println(matcher.group());
        }
    }
}