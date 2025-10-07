//
//  Item.swift
//  CarTracker
//
//  Created by Jakub Krysiak on 07/10/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
