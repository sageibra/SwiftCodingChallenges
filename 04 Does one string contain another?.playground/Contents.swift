import Foundation

/*
Write a function that accepts two String parameters, and returns true if
they contain the same characters in any order taking into account letter case.
*/

//Solution

extension String {
    func containsWithoutCaseInsensitive(_ string: String) -> Bool {
        return self.lowercased().contains(string.lowercased())
    }
}

var stringOne = "Hello, World!"
stringOne.containsWithoutCaseInsensitive("World")
stringOne.containsWithoutCaseInsensitive("hello")
