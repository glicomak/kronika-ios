import Foundation
import SwiftData

@Model
class JournalModel {
    @Attribute(.unique) var id: UUID
    var title: String
    var isActive: Bool
    @Relationship(deleteRule: .cascade) var entries: [EntryModel] = []
    
    init(title: String, isActive: Bool) {
        self.id = UUID()
        self.title = title
        self.isActive = isActive
    }
}
