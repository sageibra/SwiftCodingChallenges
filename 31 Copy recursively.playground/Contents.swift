import Foundation

/*
 Write a function that accepts two paths: the first should point to a directory to copy, and the
 second should be where the directory should be copied to. Return true if the directory and all
 its contents were copied successfully; false if the copy failed, or the user specified something
 other than a directory.
*/

// Solution

func challenge31(source: String, destination: String) -> Bool {
    let fm = FileManager.default
    var isDirectory: ObjCBool = false
    guard fm.fileExists(atPath: source, isDirectory: &isDirectory) || isDirectory.boolValue == false else { return false }
    let sourceURL = URL(fileURLWithPath: source)
    let destinationURL = URL(fileURLWithPath: destination)
    
    do {
        try fm.copyItem(at: sourceURL, to: destinationURL)
    } catch {
        print("Copy failed: \(error.localizedDescription)")
        return false
    }
    return true
}
