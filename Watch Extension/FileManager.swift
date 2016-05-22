//
//  FileManager.swift
//  MelodyPlayer
//
//  Created by user on 22.05.16.
//  Copyright © 2016 Patani. All rights reserved.
//

import Foundation

class FileManager: NSObject {
    
    let kAudioPathComponent = "/Audios"
    
    func audioFiles() -> Array<String> {
        let mainBundlePath = NSBundle.mainBundle().resourcePath!
        let audiosPath = mainBundlePath.stringByAppendingString(kAudioPathComponent)
        let fileManager = NSFileManager.defaultManager()
        var files = [String]()
        
        do {
            files = try fileManager.contentsOfDirectoryAtPath(audiosPath)
        } catch {
            print("Failed to get files paths from main bundle")
        }
        
        return files
    }
    
}
