import UIKit

// 1
var capitals = ["Arkansas": "Little Rock", "Georgia": "Atlanta"]
print(capitals)

// 2
var capitals2 = ["Arkansas": "Little Rock", "Georgia": "Atlanta"]
print(capitals2.count)

// 3
var numbers = [1: "One", 2: "Two", 3: "Three"]
print(numbers)

numbers[4] = "Four"
print(numbers)

// 4
var courses = [44542: "Java", 44560: "Database", 44613: "Data Visualization"]
print("Before changing courses \(courses)")
courses[44542] = "Java Script"
print("After changing \(courses)")

print(courses[44542])

courses.removeValue(forKey: 44613)
print(courses)

for (key, values) in courses {
    print(key)
}

for (key, values) in courses {
    print(values)
}

for (key, values) in courses {
    print("\(key) : \(values)")
}
