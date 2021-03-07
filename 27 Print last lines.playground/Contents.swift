import UIKit

/*
Write a function that accepts a filename on disk, then prints its last N
lines in reverse order, all on a single line separated by commas.
*/

func printReverseLinesIn(file: String, withExtension: String, lineCount: Int) {
    
    guard let fileURL = Bundle.main.url(forResource: file, withExtension: withExtension) else {
        print("File not found, please check the entered name is correct")
        return
    }
    
    guard let fileString = try? String(contentsOf: fileURL) else {
        print("File does not contain string data")
        return
    }
    
    var lines = fileString.components(separatedBy: "\n")
    lines.reverse()
    
    for i in 0 ..< min(lines.count, lineCount) {
        print(lines[i])
    }
}

printReverseLinesIn(file: "File", withExtension: "txt", lineCount: 4)
