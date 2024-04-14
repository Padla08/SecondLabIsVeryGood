import Foundation

func romanToInt(_ s: String) -> Int {
    let romanValues: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000,
		"i": 1,
        "v": 5,
        "x": 10,
        "l": 50,
        "c": 100,
        "d": 500,
        "m": 1000
    ]

    var result = 0
    var prevValue = 0

    for i in stride(from: s.count - 1, through: 0, by: -1) {
        let currentValue = romanValues[s[s.index(s.startIndex, offsetBy: i)]] ?? 0
        if currentValue < prevValue {
            result -= currentValue
        } else {
            result += currentValue
        }
        prevValue = currentValue
    }

    return result
}

let romanNumber = readLine()!
let arabicNumber = romanToInt(romanNumber)
print("The equivalent Arabic numeral is: \(arabicNumber)")