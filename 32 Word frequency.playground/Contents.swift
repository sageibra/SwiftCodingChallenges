import Foundation

/*
 Write a function that accepts a filename on disk, loads it into a string, then returns the
 frequency of a word in that string, taking letter case into account. How you define “word” is
 worth considering carefully.
*/

// Solution

func returnFrequency(fileName: String, count: String) -> Int {
    guard let inputString = try? String(contentsOfFile: fileName) else { return 0 }
    var nonLetters = CharacterSet.letters.inverted
    nonLetters.remove("'")
    let allWords = inputString.components(separatedBy: nonLetters)
    let wordsSet = NSCountedSet(array: allWords)
    return wordsSet.count(for: count)
}
