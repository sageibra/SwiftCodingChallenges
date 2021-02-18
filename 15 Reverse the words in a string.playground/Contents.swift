import Foundation

/*
Write a function that returns a string with each of its words reversed
but in the original order, without using a loop.
*/

// Solution

func reverseAllWordsIn(text: String) -> String {
    let words = text.components(separatedBy: " ")
    let reversedText = words.map { String($0.reversed()) }
    return reversedText.joined(separator: " ")
}

reverseAllWordsIn(text: "Swift SwiftUI UIKit Xcode")
