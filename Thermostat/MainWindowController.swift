//
//  MainWindowController.swift
//  Thermostat
//
//  Created by Sebastian on 3/25/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    private var privateTemperature = 68
    
    dynamic var temperature: Int {
        set {
            privateTemperature = newValue
        }
        get {
            return privateTemperature
        }
    }
    
    dynamic var isOn = true
    
    @IBAction func makeWarmer(sender: NSButton) {
        
        temperature += 1
    }
    
    @IBAction func makeCooler(sender: NSButton) {
        
        temperature -= 1
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func setNilValueForKey(key: String) {
        switch key {
        case "temperature":
            temperature = 68
        default:
            super.setNilValueForKey(key)
        }
    }
}
