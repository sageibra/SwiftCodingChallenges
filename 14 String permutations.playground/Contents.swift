import Foundation

/*
Write a function that prints all possible permutations of a given input string.
*/

// Solution

func printsAllPermutationsFor(string: String, current: String = "") {
    let lenght = string.count
    let strArray = Array(string)
    
    if (lenght == 0) {
        print(current)
        print("******")
    } else {
        print(current)
        
        for i in 0..<lenght {
            let left = String(strArray[0..<i])
            let right = String(strArray[i + 1..<lenght])
            printsAllPermutationsFor(string: left + right,
                                     current: current + String(strArray[i]))
        }
    }
}

printsAllPermutationsFor(string: "abc")
