//
//  NSFont.swift
//  Whoops
//
//  Created by Chris Zielinski on 10/14/18.
//  Copyright © 2018 Big Z Labs. All rights reserved.
//

import Cocoa

extension NSFont {
    func withFontSize(_ size: CGFloat) -> NSFont {
        return NSFont(name: fontName, size: size)!
    }

    func fontSizeToFit(string: String, in size: inout NSSize) -> CGFloat {
        var fontSize = min(size.width, size.height)
        let nsString = string as NSString
        let sampleSize = nsString.size(withAttributes: [.font: self.withFontSize(fontSize)])

        let delta: CGFloat
        let scale: CGFloat
        if sampleSize.width > sampleSize.height {
            delta = sampleSize.width - size.width
            scale = sampleSize.width / fontSize
        } else {
            delta = sampleSize.height - size.height
            scale = sampleSize.height / fontSize
        }

        let fontDelta = CGFloat(round(delta / scale))
        fontSize = fontSize - fontDelta
        size = nsString.size(withAttributes: [.font: self.withFontSize(fontSize)])

        return fontSize
    }
}
