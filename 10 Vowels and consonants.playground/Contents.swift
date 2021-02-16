import Foundation

/*
 Given a string in English, return a tuple containing the number of vowels and consonants.
*/

// First solution

func countVowelsAndConsonantsIn(text: String) -> (vowels: Int, consonants: Int) {
    
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in text.lowercased() {
        let stringLetter = String(letter)
        if stringLetter.rangeOfCharacter(from: vowels) != nil {
            vowelCount += 1
        } else if stringLetter.rangeOfCharacter(from: consonants) != nil {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}

countVowelsAndConsonantsIn(text: "Swift Coding Challenge")

// Second solution

func countVowelsAndConsonantsIn(inputText: String) -> (vowels: Int, consonants: Int) {
    
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in inputText.lowercased() {
        if vowels.contains(letter) {
            vowelCount += 1
        } else if consonants.contains(letter) {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}

countVowelsAndConsonantsIn(inputText: "Swift Coding Challenge")
