import SwiftUI
import SwiftData

struct NewJournalForm: View {
    let journalCount: Int
    let context: ModelContext

    @Environment(\.dismiss) private var dismiss
    
    @State private var title = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Text("New Journal")
                        .font(.headline)
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Create") {
                        createJournal()
                        dismiss()
                    }
                }
            }
        }
    }
    
    private func createJournal() {
        let journal = JournalModel(title: title, isActive: journalCount == 0)
        context.insert(journal)
    }
}
