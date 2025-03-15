import SwiftUI
import SwiftData

struct JournalsView: View {
    @Query private var journals: [JournalModel]
    
    let context: ModelContext
    
    @State private var isShowingForm = false
    
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
                        JournalCard(journal: journal, journals: journals, context: context)
                    }
                }
                .padding()
            }
        }
        .sheet(isPresented: $isShowingForm) {
            NewJournalView(journalCount: journals.count, context: context)
        }
    }
}
