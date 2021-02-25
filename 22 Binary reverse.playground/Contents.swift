import Foundation

/*
Create a function that accepts an unsigned 8-bit integer and returns its binary reverse,
padded so that it holds precisely eight binary digits.
*/

// Solution

func binaryReverse(number: UInt) -> UInt {
    let binary = String(number, radix: 2)
    let paddingAmount = 8 - binary.count
    let paddedBinary = String(repeating: "0", count: paddingAmount) + binary
    let reversedBinary = String(paddedBinary.reversed())
    return UInt(reversedBinary, radix: 2)!
}

binaryReverse(number: 41)
