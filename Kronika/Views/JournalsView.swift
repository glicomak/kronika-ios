import SwiftUI

struct JournalsView: View {
    @State private var isShowingForm = false
    
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
                    HStack {
                        Text("Journals")
                            .font(.largeTitle)
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {
                            isShowingForm.toggle()
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .imageScale(.large)
                        }
                    }
                    .padding(.horizontal)
                    
                    ForEach(journals) { journal in
                        JournalCard(journal: journal)
                    }
                }
                .padding()
            }
        }
        .sheet(isPresented: $isShowingForm) {
            NewJournalForm()
        }
    }
}
