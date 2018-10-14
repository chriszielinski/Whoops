//
//  WhoopsError.swift
//  Whoops
//
//  Created by Chris Zielinski on 10/14/18.
//  Copyright © 2018 Big Z Labs. All rights reserved.
//

import Foundation

public protocol WhoopsError: LocalizedError {
    var icon: String { get }
    /// A localized message describing what error occurred.
    var whatHappened: String { get }
    /// A localized message describing how one might recover from the failure.
    var howCanWeRecover: String? { get }
}

public extension WhoopsError {
    var errorDescription: String? {
        return whatHappened
    }

    var recoverySuggestion: String? {
        return howCanWeRecover
    }
}
