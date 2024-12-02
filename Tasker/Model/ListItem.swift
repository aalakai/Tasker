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
