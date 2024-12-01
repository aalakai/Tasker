//
//  Item.swift
//  Tasker
//
//  Created by Drew Kringel on 12/1/24.
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
