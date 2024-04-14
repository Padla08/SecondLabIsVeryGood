import Foundation

let str = "101tf11flb10001"
let pattern = try! NSRegularExpression(pattern: "10+1") // Шаблон для поиска подстрок "1[0]1"

let matches = pattern.matches(in: str, options: [], range: NSRange(location: 0, length: str.count))
for match in matches {
    let matchRange = match.range
    let matchStr = (str as NSString).substring(with: matchRange)
    print(matchStr)
}