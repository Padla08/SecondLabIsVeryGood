fun main() {
    val romanValues = mapOf(
        'I' to 1,
        'V' to 5,
        'X' to 10,
        'L' to 50,
        'C' to 100,
        'D' to 500,
        'M' to 1000,
		'i' to 1,
        'v' to 5,
        'x' to 10,
        'l' to 50,
        'c' to 100,
        'd' to 500,
        'm' to 1000
    )

    print("Enter a Roman numeral: ")
    val romanNumber = readLine()!!

    val arabicNumber = romanToInt(romanNumber, romanValues)
    println("The equivalent Arabic numeral is: $arabicNumber")
}

fun romanToInt(s: String, romanValues: Map<Char, Int>): Int {
    var result = 0
    var prevValue = 0

    for (i in s.length - 1 downTo 0) {
        val currentValue = romanValues[s[i]] ?: 0
        if (currentValue < prevValue) {
            result -= currentValue
        } else {
            result += currentValue
        }
        prevValue = currentValue
    }

    return result
}