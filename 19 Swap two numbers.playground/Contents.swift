import Foundation

/*
Swap two positive variable integers, a and b,
without using a temporary variable.
*/

var a = 3
var b = 5

// First solution

a = b + a
b = a - b
a = a - b
print("a = \(a), b = \(b)")

// Second solution

swap(&a, &b)
print("a = \(a), b = \(b)")

// Third solution

(a, b) = (b, a)
print("a = \(a), b = \(b)")
