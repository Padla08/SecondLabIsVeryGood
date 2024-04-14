fun main() {
    val str = "101tf11flb10001"
    val pattern = Regex("10+1") // Шаблон для поиска подстрок "1[0]1"

    val matches = pattern.findAll(str)
    for (match in matches) {
        println(match.value)
    }
}