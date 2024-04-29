import java.util.regex.Pattern

fun main() {
    val str = "101001f0110a1"
    val pattern = Pattern.compile("10+{1,3}1")
    val pattern2 = Pattern.compile("10+{2,3}1")

    val matcher = pattern.matcher(str)
    while (matcher.find()) {
        println(matcher.group())
    }

    val matcher2 = pattern2.matcher(str)
    while (matcher2.find()) {
        println(matcher2.group())
    }
}