import Foundation

let str = "101001f0110a1"
let pattern = try! NSRegularExpression(pattern: "10+{1,3}1")
let pattern2 = try! NSRegularExpression(pattern: "10+{2,3}1")

let matches = pattern.matches(in: str, options: [], range: NSRange(location: 0, length: str.count))
for match in matches {
    print(String(str.prefix(match.range.upperBound)))
}

let matches2 = pattern2.matches(in: str, options: [], range: NSRange(location: 0, length: str.count))
for match in matches2 {
    print(String(str.prefix(match.range.upperBound)))
}