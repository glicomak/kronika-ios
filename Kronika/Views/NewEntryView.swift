import SwiftUI
import SwiftData

struct NewEntryView: View {
    let activeJournal: JournalModel
    let context: ModelContext
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var title: String = ""
    @State private var content: String = ""
    
    let entryDate = Date()

    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                TextEditor(text: $content)
                    .frame(minHeight: 200)
            }
        }
        .navigationTitle("New Entry")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    saveEntry()
                    dismiss()
                }
            }
        }
    }

    private func saveEntry() {
        let entry = EntryModel(title: title, content: content, date: entryDate, journal: activeJournal)
        context.insert(entry)
    }
}
