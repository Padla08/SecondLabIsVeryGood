import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)
    print("Введите числа через пробел: ")
    val input = scanner.nextLine()
    val numbers = input.split(" ").map { it.toInt() }

    val result = numbers.filter { number ->
        number.toString().map { it.toString().toInt() }.sum() < 10
    }

    println("Числа, у которых сумма цифр состоит из одного десятичного разряда:")
    result.forEach { print("$it ") }
}