import Foundation

/*
 Write a function that accepts a String as its only parameter,
 and returns true if the string reads the same when reversed, ignoring case.
 */

// Solution

func isPalindrome(string: String) -> Bool {
    let lowercased = string.lowercased()
    return String(lowercased.reversed()) == lowercased
}

isPalindrome(string: "rotator")
isPalindrome(string: "Rats live on no evil star")
isPalindrome(string: "Hello, world")

