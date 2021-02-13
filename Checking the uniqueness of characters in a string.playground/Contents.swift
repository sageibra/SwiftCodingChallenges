import Foundation

// Given two strings, write a function that returns true if all letters are unique.

// First solution

func checkForUniqueness(firstValue: String, secondValue: String) -> Bool {
    var checkValue = secondValue
    
    for letter in firstValue {
        
        if let index = checkValue.firstIndex(of: letter) {
            checkValue.remove(at: index)
            
        } else { return false }
    }
    
    return checkValue.count == 0
}

checkForUniqueness(firstValue: "abc", secondValue: "bca")


// Second solution

func checkForUniqueness(firstString: String, secondString: String) -> Bool {
    return firstString.sorted() == secondString.sorted()
}

checkForUniqueness(firstString: "abc", secondString: "abC")
