import Foundation

/*
Write a function that accepts two strings, and returns true if they are identical in length but
have no more than three different letters, taking case and string order into account.
*/

// Solution

func areTwoStringsIdentical(firstText: String, secondText: String) -> Bool {
    guard firstText.count == secondText.count else { return false }
    let firstArray = Array(firstText)
    let secondArray = Array(secondText)
    var differences = 0
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            if differences == 4 {
                return false
            }
        }
    }
    return true
}

areTwoStringsIdentical(firstText: "Clampy", secondText: "Crampi")
areTwoStringsIdentical(firstText: "Clamp", secondText: "Grans")

