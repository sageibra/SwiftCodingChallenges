import Foundation

/*
Write a function that returns the square root of a positive integer,
rounded down to the nearest integer, without using sqrt().
*/

// First solution

func returnSquareFor(number: Int) -> Int {
    guard number != 1 else { return 1 }
    for i in 0 ... number / 2 + 1 {
        if i * i > number {
            return i - 1
        }
    }
    return 0
}

returnSquareFor(number: 9)
returnSquareFor(number: 5)

// Second solution

func returnSquareFor(input: Int) -> Int {
    guard input != 1 else { return 1 }
    var lowerBound = 0
    var upperBound = 1 + input / 2
    
    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSquared = middle * middle
        if middleSquared == input {
            return middle
        } else if middleSquared < input {
            lowerBound = middle
        } else {
            upperBound = middle
        }
    }
    return lowerBound
}

returnSquareFor(input: 9)
returnSquareFor(input: 16777216)
