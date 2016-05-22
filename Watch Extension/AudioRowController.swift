//
//  AudioRowController.swift
//  MelodyPlayer
//
//  Created by user on 22.05.16.
//  Copyright © 2016 Patani. All rights reserved.
//

import WatchKit

class AudioRowController: NSObject {
    
    @IBOutlet var labelAudioArtist: WKInterfaceLabel!
    @IBOutlet var labelAudioTitle: WKInterfaceLabel!
    
    var audioTrack: AudioTrack? {
        didSet {
            if let audioTrack = audioTrack {
                labelAudioArtist.setText(audioTrack.artist)
                labelAudioTitle.setText(audioTrack.title)
            }
        }
    }
    
}
