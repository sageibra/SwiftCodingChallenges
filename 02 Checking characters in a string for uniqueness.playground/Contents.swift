import Foundation

/*
Write a function that accepts a String as its only parameter,
and returns true if the string has only unique letters,
taking letter case into account.
*/

// First solution

func checkForUniqueness(value: String) -> Bool {
    var checkedSymbols = [Character]()
    
    for character in value {
        if checkedSymbols.contains(character) {
            return false
        }
        checkedSymbols.append(character)
    }
    return true
}

checkForUniqueness(value: "abc")
checkForUniqueness(value: "abb")

// Second solution

func checkForUniqueness(input: String) -> Bool {
    return Set(input).count == input.count
}

checkForUniqueness(input: "abc")
checkForUniqueness(input: "Hello world!")
