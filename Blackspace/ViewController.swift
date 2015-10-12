//
//  ViewController.swift
//  Void
//
//  Created by Peter Pistorius on 12/10/15.
//  Copyright © 2015 Peter Pistorius. All rights reserved.
//  (I don't care.)
//

import Cocoa

class ViewController: NSViewController {

    func executeCommandLineTask(path: String, arguments: Array<String>) {
        
        let task = NSTask()
        task.launchPath = path
        task.arguments = arguments
        task.launch()
        task.waitUntilExit()
    }

    @IBAction func didClickInsertVoid(sender: AnyObject) {
        executeCommandLineTask("/usr/bin/defaults", arguments: ["write", "com.apple.dock", "persistent-apps", "-array-add", "{\"tile-type\"=\"spacer-tile\";}"]);
        executeCommandLineTask("/usr/bin/killall", arguments: ["Dock"]);
    }
}

