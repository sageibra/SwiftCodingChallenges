import Foundation

/*
Create a function that accepts any positive integer
and returns the next highest and next lowest
number that has the same number of ones in its
binary representation. If either number is not
possible, return nil for it.
*/

// First solution

func challenge(number: Int) -> (nextHighest: Int?, nexLowest: Int?) {
    let targetBinary = String(number, radix: 2)
    let targetOnes = targetBinary.filter { (char: Character) -> Bool in char == "1"}.count
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    for i in number + 1...Int.max {
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.filter { (char: Character) -> Bool in char == "1"}.count
        if targetOnes == currentOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0..<number).reversed() {
        let currentBinary = String(i, radix: 2)
        let currentOnes = currentBinary.filter { (char: Character) -> Bool in char == "1"}.count
        if targetOnes == currentOnes {
            nextLowest = i
            break
        }
    }
    
    return (nextHighest, nextLowest)
}

challenge(number: 12)

// Refactoring the first solution

func refChallenge(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    func ones(in number: Int) -> Int {
        let currentBinary = String(number, radix: 2)
        return currentBinary.filter { (char: Character) -> Bool in char == "1"}.count
    }
    
    let targetOnes = ones(in: number)
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    for i in number + 1...Int.max {
        if ones(in: i) == targetOnes {
            nextHighest = i
            break
        }
    }
    for i in (0 ..< number).reversed() {
        if ones(in: i) == targetOnes {
            nextLowest = i
            break
        }
    }
    return (nextHighest, nextLowest)
}

refChallenge(number: 12)
