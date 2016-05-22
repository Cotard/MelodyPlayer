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
    let artist: String
    
    class func audiosFromFilesPaths(files: [String]) -> [AudioTrack] {
        var audios = [AudioTrack]()
        
        for file in files {
            let audioAsset = WKAudioFileAsset(URL: NSURL(fileURLWithPath: file))
            
            let title = (audioAsset.title != nil) ? audioAsset.title! : "Unknown Track"
            let artist = (audioAsset.artist != nil) ? audioAsset.artist! : "Unknown Artist"
            
            let audioTrack = AudioTrack(title: title, artist: artist)
            audios.append(audioTrack)
        }
        
        return audios
    }
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
    }
    
}
