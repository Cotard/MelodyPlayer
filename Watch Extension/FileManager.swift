//
//  FileManager.swift
//  MelodyPlayer
//
//  Created by user on 22.05.16.
//  Copyright © 2016 Patani. All rights reserved.
//

import Foundation

class FileManager: NSObject {
    
    static let kAudioPathComponent = "Audios"
    
    class func audioFiles() -> Array<NSURL> {
        let mainBundleUrl = NSBundle.mainBundle().resourceURL!
        let audiosUrl = mainBundleUrl.URLByAppendingPathComponent(kAudioPathComponent)
        
        let fileManager = NSFileManager.defaultManager()
        var filesUrls = [NSURL]()
        
        do {
            let files = try fileManager.contentsOfDirectoryAtPath(audiosUrl.path!)
            for file in files {
                filesUrls.append(audiosUrl.URLByAppendingPathComponent(file))
            }
        } catch {
            print("Failed to get files paths from main bundle")
        }
        
        return filesUrls
    }
    
}
