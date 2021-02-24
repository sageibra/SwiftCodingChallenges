import Foundation

/*
Write a function that accepts an integer as its parameter
and returns true if the number is prime.
*/

// First solution

func numberIsPrime(number: Int) -> Bool {
    
    guard number >= 2 else { return false }
    for i in 2 ..< number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

numberIsPrime(number: 9)

// Second solution

func numberIsPrime(_ number: Int) -> Bool {
    guard number >= 2 else { return false }
    guard number != 2 else { return true }
    
    let max = Int(ceil(sqrt(Double(number))))
    for i in 2 ... max {
        if number % i == 0 {
            return false
        }
    }
    return true
}

numberIsPrime(9)
