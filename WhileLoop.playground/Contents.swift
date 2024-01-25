import UIKit

var prodNumber:Int = 6
var product:Int = 1
print("The product of first \(prodNumber) numbers is", terminator: " ")

while prodNumber > 0 {
    product*=prodNumber
    prodNumber-=1
}
print(product)

var rangeValue:Int = 30
while rangeValue >= 1 {
    if rangeValue%3 == 0 {
        print("\(rangeValue)", terminator: " ")
    }
    rangeValue-=1
}

print("\n")

var number = 1
repeat {
    print(number, terminator: " ")
    number+=1
} while number <= 10

print("\n")

var number2 = 3
repeat {
    print("Hello World!!")
    number2+=1
} while (number2 <= 2)

print("\n")

var a = 0
var b = 10

while (b-2 > 0) {
    b-=2
    while (a+2 < 10) {
        a+=2
        if a==b {
            continue
        }
        print("(\(a),\(b))", terminator:"")
    }
}

print("\n")

var d = 100
while(d > 50) {
    d = d - 30
}
print(d)
if(d > 70) {
    d-=20
}
else {
    d+=35
}
print(d)
