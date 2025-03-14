import SwiftUI
import SwiftData

struct JournalCard: View {
    let journal: JournalModel
    let journals: [JournalModel]
    let context: ModelContext
    
    var body: some View {
        HStack {
            if journal.isActive {
                Text(journal.title)
                    .bold()
                    .padding()
            } else {
                Text(journal.title)
                    .padding()
            }
            
            Spacer()
            
            Menu {
                Button("Make active", action: activate)
                Button("Delete", role: .destructive, action: delete)
            } label: {
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .imageScale(.large)
                    .padding()
            }
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
    
    private func activate() {
        for journalItem in journals {
            journalItem.isActive = false
        }
        journal.isActive = true
    }
    
    private func delete() {
        let needNewActive = journal.isActive && (journals.count > 1)
        context.delete(journal)
        if needNewActive {
            journals[0].isActive = true
        }
    }
}
