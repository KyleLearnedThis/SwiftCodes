//
//  FileOpener.swift
//  SwiftCodes
//
//  Copyright © 2019 kylelearnedthis. All rights reserved.
//

import Foundation

public class FileOpener {

    public func openFile() {

        let home = FileManager.default.homeDirectoryForCurrentUser
        let inputDirectory = "dev/iOS/SwiftCodes/SwiftCodesTests/swift/resources/"
        let url = home.appendingPathComponent(inputDirectory).appendingPathComponent("test02").appendingPathExtension("txt")

        do {
            let input = try String(contentsOf: url, encoding: .utf8)
            print("===== input: \(input)=====")
        } catch {
            print("failed")
        }
    }

    public func openTestFileInDocument() {
        let fileName = "Test"
        let dir = try? FileManager.default.url(for: .documentDirectory,
                                               in: .userDomainMask, appropriateFor: nil, create: true)
        // If the directory was found, we write a file to it and read it back
        if let fileURL = dir?.appendingPathComponent(fileName).appendingPathExtension("txt") {

            // Write to the file named Test
            let outString = "Write this text to the file"
            do {
                try outString.write(to: fileURL, atomically: true, encoding: .utf8)
            } catch {
                print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
            }

            // Then reading it back from the file
            var inString = ""
            do {
                inString = try String(contentsOf: fileURL)
            } catch {
                print("Failed reading from URL: \(fileURL), Error: " + error.localizedDescription)
            }
            print("Read from the file: \(inString)")
        }
    }
}
