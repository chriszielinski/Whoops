//
//  ViewController.swift
//  Demo
//
//  Created by Chris Zielinski on 10/14/18.
//  Copyright © 2018 Big Z Labs. All rights reserved.
//

import Cocoa
import Whoops

class ViewController: NSViewController {

    @IBOutlet var textField: NSTextField!

    @IBAction
    func alertButtonAction(_ button: NSButton) {
        let error = Whoops(icon: "👍",
                           whatHappened: "Uh oh. Something happened.",
                           howCanWeRecover: "Is recovery even worth it?")

        let alert = NSAlert.createWarningAlert(from: error)
        alert.runModal()
    }
}

