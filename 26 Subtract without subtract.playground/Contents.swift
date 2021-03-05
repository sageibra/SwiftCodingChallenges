import Foundation

/*
Create a function that subtracts one positive integer from another,
without using - .
*/

// First solution

func subtract(_ numberOne: Int, _ numberTwo: Int) -> Int {
    return numberOne + -numberTwo
}

subtract(8, 4)

// Second solution

func subtract(number: Int, from: Int) -> Int {
    return number + from * -1
}

subtract(number: 9, from: 3)

// Third solution

func subtract(numbers: Int, _ numberTwo: Int) -> Int {
    return ((~numbers + 1) + numberTwo) * -1
}

subtract(numbers: 10, 6)
