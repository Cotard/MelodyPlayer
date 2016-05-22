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
    let url: NSURL
    
    
    class func audiosFromFilesUrls(files: [NSURL]) -> [AudioTrack] {
        var audios = [AudioTrack]()
        
        for file in files {
            let audioAsset = WKAudioFileAsset(URL: file)
            
            let title = (audioAsset.title != nil) ? audioAsset.title! : "Unknown Track"
            let artist = (audioAsset.artist != nil) ? audioAsset.artist! : "Unknown Artist"
            
            let audioTrack = AudioTrack(title: title, artist: artist, url: file)
            audios.append(audioTrack)
        }
        
        return audios
    }
    
    init(title: String, artist: String, url: NSURL) {
        self.title = title
        self.artist = artist
        self.url = url
    }
    
}
