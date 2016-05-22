//
//  AudioRowController.swift
//  MelodyPlayer
//
//  Created by user on 22.05.16.
//  Copyright © 2016 Patani. All rights reserved.
//

import WatchKit

class AudioRowController: NSObject {
    
    @IBOutlet var labelAudioTitle: WKInterfaceLabel!
    @IBOutlet var labelAudioDuration: WKInterfaceLabel!
    
    var audioTrack: AudioTrack? {
        didSet {
            if let audioTrack = audioTrack {
                labelAudioTitle.setText(audioTrack.title)
                labelAudioDuration.setText(audioTrack.duration)
            }
        }
    }
    
}
