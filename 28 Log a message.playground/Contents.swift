import Foundation

/*
 Write a logging function that accepts accepts a path to a log file on disk as well as a new log
 message. Your function should open the log file (or create it if it does not already exist), then
 append the new message to the log along with the current time and date.
*/

// Solution

func challenge28(log message: String, to logFile: String) {
    var existingLog = (try? String(contentsOfFile: logFile)) ?? ""
    existingLog.append("\(Date()): \(message)\n")
    
    do {
        try existingLog.write(toFile: logFile, atomically: true, encoding: .utf8)
    } catch {
        print("Failed to write to log: \(error.localizedDescription)")
    }
}
