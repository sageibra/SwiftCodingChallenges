import Foundation

/*
Write a function that accepts a string of words with a similar prefix,
separated by spaces, and returns the longest substring
that prefixes all words.
*/

// Solution

func findTheLongestPrefixIn(text: String) -> String {
    
    let parts = text.components(separatedBy: " ")
    guard let first = parts.first else { return "" }
    
    var currentPrefix = ""
    var longestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return longestPrefix
            }
        }
        longestPrefix = currentPrefix
    }
    return longestPrefix
}

findTheLongestPrefixIn(text: "swift switch swill swim")
findTheLongestPrefixIn(text: "flip flap flop")
