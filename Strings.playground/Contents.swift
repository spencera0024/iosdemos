import UIKit

var course = "44643-Mobile Computing-iOS"

let numIndex = course.firstIndex(of: "-") ?? course.endIndex
let beginning = course[..<numIndex]
print(beginning)

let range = course.index(course.startIndex, offsetBy: 6)..<course.endIndex
let substring = course[range]
print(substring)

let subIndex = substring.firstIndex(of: " ") ?? substring.endIndex
let subBeginning = substring[..<subIndex]
print(subBeginning)
