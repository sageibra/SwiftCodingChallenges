import Foundation

/*
Create a function that accepts positive two integers, and raises
the first to the power of the second.
*/

// First solution

func raiseNumberToPower(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    var returnValue = number
    
    for _ in 1..<power {
        returnValue *= number
    }
    
    return returnValue
}

raiseNumberToPower(number: 2, power: 8)

// Second solution

func raiseNumberToPower(num: Int, power: Int) -> Int {
    guard num > 0, power > 0 else { return 0 }
    if power == 1 { return num }
    return num * raiseNumberToPower(num: num, power: power-1)
}

raiseNumberToPower(num: 2, power: 8)
