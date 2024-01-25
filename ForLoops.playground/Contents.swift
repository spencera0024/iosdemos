import UIKit

var number:Int = 5
for index in 1...5 {
    print("\(index) * \(number) = \(index*number)")
}

var totalNumbers = 100
var sum:Int = 0
for number in 1...totalNumbers {
    sum+=number
}
print("The sum of first \(totalNumbers) is \(sum)")

var coreLang = ["Java", "Swift", "Javascript", "ASP.net", "SQL"]
for index in 0..<coreLang.count {
    print("\(coreLang[index])")
}

var totalSum = 10
for val in 1...totalSum {
    if (val%2 == 0) {
        print("\(val)", terminator: ",")
    }
}
print(" are all even numbers")

var member = true
var scratchCard = 10
var count = 0
for attempt in 1..<scratchCard {
    count+=1
    if member {
        if count>3 {
            print("You won \(scratchCard-2)$")
            count = 0
            break
        }
    } else {
        if(count > 8) {
            print("You got \(scratchCard-8)$")
        }
    }
}
