//
//  AudiosInterfaceController.swift
//  MelodyPlayer
//
//  Created by user on 22.05.16.
//  Copyright © 2016 Patani. All rights reserved.
//

import WatchKit
import Foundation


class AudiosInterfaceController: WKInterfaceController {

    let kRowType = "AudioRow"
    var audioTracks = [AudioTrack]()
    
    @IBOutlet var audiosTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let files = FileManager.audioFiles()
        audioTracks = AudioTrack.audiosFromFilesUrls(files)
        
        audiosTable.setNumberOfRows(audioTracks.count, withRowType: kRowType)
        
        for index in 0..<audiosTable.numberOfRows {
            if let rowController = audiosTable.rowControllerAtIndex(index) as? AudioRowController {
                rowController.audioTrack = audioTracks[index]
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let audio = audioTracks[rowIndex]
        presentMediaPlayerControllerWithURL(audio.url, options: [WKMediaPlayerControllerOptionsAutoplayKey: true]) { (didPlayToEnd: Bool, endTime: NSTimeInterval, error: NSError?) in
            
        }
    }

}
