import Foundation
import SwiftData

@Model
class JournalModel {
    @Attribute(.unique) var id: UUID
    var title: String
    var isActive: Bool
    
    init(title: String, isActive: Bool) {
        self.id = UUID()
        self.title = title
        self.isActive = isActive
    }
}
