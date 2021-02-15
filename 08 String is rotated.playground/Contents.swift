import Foundation

/*
Write a function that accepts two strings, and returns true if one string is rotation
of the other, taking letter case into account.
*/

// First solution

func isRotated(text: String, rotated: String) -> Bool {
    guard text.count == rotated.count else { return false }
    let combined = text + text
    return combined.contains(rotated)
}

isRotated(text: "swift", rotated: "ftswi")
