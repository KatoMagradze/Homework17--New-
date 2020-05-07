//
//  UDManager.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit
import Foundation

class UDManager {
    
    internal static let KEY_FIRST = "KEY_FIRST"
    internal static let KEY_INDEX = "KEY_INDEX"
    
    static func getUD() -> UserDefaults {
        return UserDefaults.standard
    }
    
    static func setTrue() {
        getUD().set(true, forKey: KEY_FIRST)
    }
    
    static func getFirst() -> Bool {
        return getUD().bool(forKey: KEY_FIRST)
    }
    
    static func setIndex(value: Int) {
        getUD().set(value, forKey: KEY_INDEX)
    }
    
    static func getIndex() -> Int {
        return getUD().integer(forKey: KEY_INDEX)
    }
    
}
