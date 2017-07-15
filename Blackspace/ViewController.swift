//
//  ViewController.swift
//  Void
//
//  Created by Peter Pistorius on 12/10/15.
//  Copyright © 2015 Peter Pistorius. All rights reserved.
//  Updated by Perceval Faramaz on 15/07/17.
//  Portions copyright © 2017 Perceval Faramaz. All rights reserved.
//  (Me neither.)
//

import Cocoa

class ViewController: NSViewController {
    
    func buildTileDictionary(_ small: Bool) -> Dictionary<String, String> {
        var dict = Dictionary<String, String>()
        dict["tile-type"] = (small) ? "small-spacer-tile" : "spacer-tile"
        return dict
    }
    
    func reloadDock() {
        let runningApplications = NSWorkspace.shared().runningApplications
        for app in runningApplications {
            if app.bundleIdentifier == "com.apple.dock" {
                kill( app.processIdentifier, SIGKILL );
            }
        }
    }
    
    func insertSpacer(_ small: Bool) {
        let dockDefaults = UserDefaults(suiteName: "com.apple.dock")
        
        guard var dockArray = dockDefaults?.array(forKey: "persistent-apps") else { return }
        
        dockArray.append( buildTileDictionary(small) )
        
        dockDefaults!.set(dockArray, forKey: "persistent-apps")
        
        reloadDock()
    }

    @IBAction func didClickInsertVoid(_ sender: AnyObject) {
        insertSpacer(false)
    }
    
    @IBAction func didClickInsertSmallVoid(_ sender: AnyObject) {
        insertSpacer(true)
    }
}

