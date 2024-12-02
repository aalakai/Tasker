//
//  ListItem.swift
//  Tasker
//
//  Created by Drew Kringel on 12/1/24.
//

import Foundation
import SwiftData

@Model
final class ListItem: Identifiable {
    @Attribute(.unique) var id: UUID = UUID()
    var title: String
    var isChecked: Bool = false
    
    init(title: String) {
        self.title = title
    }
}
