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
    
    @IBOutlet var audiosTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let files = FileManager.audioFiles()
        audiosTable.setNumberOfRows(files.count, withRowType: kRowType)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
