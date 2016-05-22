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
    let url: NSURL
    
    
    class func audiosFromFilesUrls(files: [NSURL]) -> [AudioTrack] {
        var audios = [AudioTrack]()
        
        for file in files {
            let audioAsset = WKAudioFileAsset(URL: file)
            
            let title = (audioAsset.title != nil) ? audioAsset.title! : "Unknown Track"
            
            let durationInterval = Int(audioAsset.duration)
            let seconds = durationInterval % 60
            let minutes = (durationInterval / 60) % 60
            let duration = String(format: "%d:%02d", minutes, seconds)
            
            let audioTrack = AudioTrack(title: title, duration: duration, url: file)
            audios.append(audioTrack)
        }
        
        return audios
    }
    
    init(title: String, duration: String, url: NSURL) {
        self.title = title
        self.duration = duration
        self.url = url
    }
    
}
