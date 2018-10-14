//
//  NSAlert.swift
//  Whoops
//
//  Created by Chris Zielinski on 10/14/18.
//  Copyright © 2018 Big Z Labs. All rights reserved.
//

import Cocoa

public extension NSAlert {
    /// Creates a critical alert (stylized with a yellow caution symbol and icon in bottom right corner) from an error.
    ///
    /// - Parameter error: An error containing the information for the alert.
    /// - Returns: A critical alert.
    static func createCriticalAlert(from error: WhoopsError) -> NSAlert {
        let alert = NSAlert(error: error)
        alert.setIcon(error.icon)
        return alert
    }

    /// Creates a warning alert (stylized with the icon) from an error.
    ///
    /// - Parameter error: An error containing the information for the alert.
    /// - Returns: A warning alert.
    static func createWarningAlert(from error: WhoopsError) -> NSAlert {
        let alert = NSAlert(error: error)
        alert.alertStyle = .warning
        alert.setIcon(error.icon)
        return alert
    }

    func setIcon(_ icon: String) {
        let iconRect = NSRect(origin: .zero, size: self.icon.size)
        let iconSize = NSScreen.main?.convertRectToBacking(iconRect).size ?? iconRect.size
        self.icon = ImageGenerator.image(from: icon, size: iconSize)
    }
}
