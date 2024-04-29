import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {
        String str = "101001f0110a1";
        Pattern pattern = Pattern.compile("10+{1,3}1");
        Pattern pattern2 = Pattern.compile("10+{2,3}1");

        Matcher matcher = pattern.matcher(str);
        while (matcher.find()) {
            System.out.println(matcher.group());
        }

        Matcher matcher2 = pattern2.matcher(str);
        while (matcher2.find()) {
            System.out.println(matcher2.group());
        }
    }
}