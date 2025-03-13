import SwiftUI

struct NewJournalForm: View {
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
        let journal = JournalModel(title: title)
        print("New journal \"\(journal.title)\" created")
    }
}
