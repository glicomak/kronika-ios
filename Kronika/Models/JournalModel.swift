import Foundation
import SwiftData

@Model
class JournalModel {
    @Attribute(.unique) var id: UUID
    var title: String
    
    init(title: String) {
        self.id = UUID()
        self.title = title
    }
}
