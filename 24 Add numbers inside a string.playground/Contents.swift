import Foundation

/*
Given a string that contains both letters and numbers, write a function
that pulls out all the numbers then returns their sum.
*/

// First solution

func returnSum(input: String) -> Int {
    var currentNumber = ""
    var sum = 0
    for letter in input {
        let strLetter = String(letter)
        if Int(strLetter) != nil {
            currentNumber += strLetter
        } else {
            sum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    sum += Int(currentNumber) ?? 0
    return sum
}

returnSum(input: "12b7n1q10")

// Second solution

func returnSum(text: String) -> Int {
    let regex = try! NSRegularExpression(pattern: "(\\d+)", options: [])
    let matches = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
    let allNumbers = matches.compactMap { Int((text as NSString).substring(with: $0.range)) }
    return allNumbers.reduce(0, +)
}

returnSum(text: "12b7n1q10")
