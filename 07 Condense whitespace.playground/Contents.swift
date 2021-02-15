import Foundation

/*
Write a function that returns a string with any consecutive spaces
replaced with a single space.
*/

// First solution

func condenceWhitespaceIn(string: String) -> String {
    var seenSpace = false
    var returnValue = ""
    for letter in string {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    return returnValue
}

condenceWhitespaceIn(string: "Hello      World!")

// Second solution

func condenceWhitespaceIn(text: String) -> String {
    let components = text.components(separatedBy: .whitespacesAndNewlines)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}

condenceWhitespaceIn(text: "Hello   World!")

// Third solution

func condenceWhitespaceIn(inputText: String) -> String {
    return inputText.replacingOccurrences(of: " +",
                                          with: " ",
                                          options: .regularExpression, range: nil)
}

condenceWhitespaceIn(inputText: "Hello       Swift!")
