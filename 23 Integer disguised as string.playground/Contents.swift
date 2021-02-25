import Foundation

/*
Write a function that accepts a string and returns true if it contains only numbers,
i.e. the digits 0 through 9.
*/

// First solution

func checkText(text: String) -> Bool {
    return UInt(text) != nil
}

checkText(text: "9223372036854775808")
checkText(text: "-1")

// Second solution

func checkText(_ text: String) -> Bool {
    for letter in text {
        if Int(String(letter)) == nil {
            return false
        }
    }
    return true
}

checkText("9223372036854775808")
checkText("-1")

// Third solution

func checkText(input: String) -> Bool {
    return input.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
}

checkText(input: "9223372036854775808")
checkText(input: "-1")

// Fourth solution

func checkText(inputText: String) -> Bool {
    return inputText.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
}

checkText(inputText: "9223372036854775808")
checkText(inputText: "-1")

