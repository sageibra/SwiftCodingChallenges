import Foundation
/*
Write a function that accepts positive minimum and maximum integers, and returns a random
number between those two bounds, inclusive.
*/

// First solution
let randomNumber = Int.random(in: 1...100)
print(randomNumber)

// Second solution
func getRandomNumber(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

getRandomNumber(min: 1, max: 100)
