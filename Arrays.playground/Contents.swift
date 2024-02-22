import UIKit

var numbers:[Int] = [2, 3, 4]
print(numbers)

var emptyArray = [Int] ()
print(emptyArray)

var programmingLanguages = ["Swift", "Java", "Python"]
print(programmingLanguages)
programmingLanguages[0] = "Java Script"
print(programmingLanguages[0])

var names:[String] = ["Oliver", "Elijah", "James"]

print("Before appending \(names)")
names.append("Masthan")
print("Before inserting \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")

print(names.count)

names.sort()
print("After sorting \(names)")

names.reverse()
print("After reversing \(names)")

names.remove(at: 2)
print("After removing \(names)")

names.swapAt(1, 2)
print("After swapping \(names)")

var oddNumbers = [1, 3, 5, 7]
var evenNumbers = [2, 4, 6, 8]
oddNumbers.append(contentsOf: evenNumbers)
print("After combining \(oddNumbers)")
