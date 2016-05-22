//
//  AudioTrack.swift
//  MelodyPlayer
//
//  Created by user on 22.05.16.
//  Copyright © 2016 Patani. All rights reserved.
//

import WatchKit

class AudioTrack {
    
    let title: String
    let duration: String
    
    class func audiosFromFilesPaths(files: [String]) -> [AudioTrack] {
        var audios = [AudioTrack]()
        
        for file in files {
            let audioAsset = WKAudioFileAsset(URL: NSURL(fileURLWithPath: file))
            
            let title = (audioAsset.title != nil) ? audioAsset.title! : "Unknown Track"
            
            let durationInterval = Int(audioAsset.duration)
            let seconds = durationInterval % 60
            let minutes = (durationInterval / 60) % 60
            let duration = String(format: "%d:%02d", minutes, seconds)
            
            let audioTrack = AudioTrack(title: title, duration: duration)
            audios.append(audioTrack)
        }
        
        return audios
    }
    
    init(title: String, duration: String) {
        self.title = title
        self.duration = duration
    }
    
}
