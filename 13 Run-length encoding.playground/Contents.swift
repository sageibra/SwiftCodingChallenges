import Foundation

/*
Write a function that accepts a string as input, then returns how often each
letter is repeated in a single run, taking case into account.
*/

// First solution

func howOftenEachLetterIsRepeatedIn(text: String) -> String {
    
    var currentLetter: Character?
    var letterCounter = 0
    var returnValue = ""
    
    for letter in text {
        if letter == currentLetter {
            letterCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            currentLetter = letter
            letterCounter = 1
        }
    }
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    return returnValue
}

howOftenEachLetterIsRepeatedIn(text: "aabbcc")

// Second solution

func howOftenEachLetterIsRepeatedIn(input: String) -> String {
    
    var returnValue = ""
    var letterCounter = 0
    let letterArray = Array(input)
    for i in 0 ..< letterArray.count {
        letterCounter += 1
        if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
            returnValue += "\(letterArray[i])\(letterCounter)"
            letterCounter = 0
        }
    }
    return returnValue
}

howOftenEachLetterIsRepeatedIn(input: "aaabaaabaaa")
