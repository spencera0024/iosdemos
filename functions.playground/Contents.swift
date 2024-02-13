import UIKit

func manipulateNumber(input: Int, mode:Bool)->String {
    var counter = input
    if(mode) { 
        counter+=2
    }
    else {
        counter-=1
    }
    return "The \(mode ? "incremented" : "decremented" ) value is \(counter)"
}

var val = 19
print(manipulateNumber(input:val,mode: false))
