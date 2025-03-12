import SwiftUI

struct JournalsView: View {
    let journals = [
        JournalModel(title: "2025 January to March"),
        JournalModel(title: "2025 April to June"),
        JournalModel(title: "2025 July to September"),
        JournalModel(title: "2025 October to December"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Journals")
                        .font(.largeTitle)
                        .bold()
                        .padding(.leading)
                    
                    ForEach(journals, id: \.self) { journal in
                        JournalCard(journal: journal)
                    }
                }
                .padding()
            }
        }
    }
}

struct JournalCard: View {
    let journal: JournalModel
    
    var body: some View {
        HStack {
            Text(journal.title)
                .bold()
                .padding()
            
            Spacer()
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

struct JournalModel: Identifiable, Hashable {
    let id = UUID()
    let title: String
}
