import Foundation

/*
Write a function that returns true if it is given a string that is an English pangram,
ignoring letter case.
*/

// Solution

func isPangram(text: String) -> Bool {
    let set = Set(text.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}

isPangram(text: "The quick brown fox jumps over the lazy dog")
isPangram(text: "The quick brown fox jumped over the lazy dog") //Return false, because it’s missing the S.
