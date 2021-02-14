import Foundation

/*
Write a function that accepts a string, and returns how many times
a specific character appears, taking case into account.
*/

// First solution

func countTheCharacterIn(string: String, character: Character) -> Int {
    var count = 0
    for char in string {
        if char == character {
            count += 1
        }
    }
    return count
}

countTheCharacterIn(string: "Hello, World", character: "l")

// Second solution

func countTheLetterIn(string: String, letter: Character) -> Int {
    return string.reduce(0) {
        $1 == letter ? $0 + 1 : $0
    }
}

countTheLetterIn(string: "Swift language", letter: "a")

