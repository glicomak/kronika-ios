import SwiftUI
import SwiftData

@Model
class JournalModel {
    var id: UUID
    var title: String
    
    init(title: String) {
        self.id = UUID()
        self.title = title
    }
}
