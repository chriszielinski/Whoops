//
//  ImageGenerator.swift
//  Whoops
//
//  Created by Chris Zielinski on 10/14/18.
//  Copyright © 2018 Big Z Labs. All rights reserved.
//

import Cocoa

open class ImageGenerator: NSObject {
    public class func image(from string: String, size: NSSize) -> NSImage {
        return image(from: string, size: size, font: NSFont.systemFont(ofSize: 0))
    }

    public class func image(from string: String, size: NSSize, font: NSFont) -> NSImage {
        var imageSize = size
        let fontSize = font.fontSizeToFit(string: string, in: &imageSize)
        let origin = NSPoint(x: (size.width - imageSize.width) / 2, y: -(size.height - imageSize.height) / 2)

        let image = NSImage(size: size)
        image.lockFocus()
        (string as NSString).draw(with: NSRect(origin: origin, size: size),
                                  options: .usesLineFragmentOrigin,
                                  attributes: [.font: font.withFontSize(fontSize)])
        image.unlockFocus()

        return image
    }
}
