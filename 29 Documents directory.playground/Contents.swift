import Foundation

/*
 Write a function that returns a URL to the user’s documents directory.
*/

// Solution

func returnDocumentsDirectoryUrl() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}

returnDocumentsDirectoryUrl()
