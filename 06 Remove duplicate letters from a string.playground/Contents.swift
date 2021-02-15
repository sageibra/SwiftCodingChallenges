import Foundation

/*
Write a function that accepts a string as its input, and returns
the same string just with duplicate letters removed.
*/

// First solution

func removeDuplicateLettersIn(text: String) -> String {
    var result = ""
    for letter in text {
        if !result.contains(letter) {
            result.append(letter)
        }
    }
    return result
}

removeDuplicateLettersIn(text: "Mississippi")
removeDuplicateLettersIn(text: "hello")

// Second solution

func removeDuplicateLettersIn(string: String) -> String {
    var used = [Character: Bool]()
    let result = string.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    
    return String(result)
}

removeDuplicateLettersIn(string: "Mississippi")
