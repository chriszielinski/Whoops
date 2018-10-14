//
//  Whoops.swift
//  Whoops
//
//  Created by Chris Zielinski on 10/14/18.
//  Copyright © 2018 Big Z Labs. All rights reserved.
//

import Cocoa

public struct Whoops: WhoopsError {
    public var icon: String

    public var whatHappened: String
    public var howCanWeRecover: String?

    public init(icon: String, whatHappened: String, howCanWeRecover: String? = nil) {
        self.icon = icon
        self.whatHappened = whatHappened
        self.howCanWeRecover = howCanWeRecover
    }
}
