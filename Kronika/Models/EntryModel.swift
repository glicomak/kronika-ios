import Foundation
import SwiftData

@Model
class EntryModel {
    @Attribute(.unique) var id: UUID
    var title: String
    var content: String
    var date: Date
    var journal: JournalModel
    
    init(title: String, content: String, date: Date, journal: JournalModel) {
        self.id = UUID()
        self.title = title
        self.content = content
        self.date = date
        self.journal = journal
    }
}
