import Foundation

func sumDigits(num: Int) -> Int {
    var sum = 0
    var n = num
    while n > 0 {
        sum += n % 10
        n /= 10
    }
    return sum
}

func findNumbers(arr: [Int]) -> [Int] {
    return arr.filter { sumDigits(num: $0) < 10 }
}

if let input = readLine() {
    let arr = input.split(separator: " ").map { Int($0)! }
    print(findNumbers(arr: arr))
}