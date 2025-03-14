import SwiftUI
import SwiftData

struct JournalsView: View {
    @Query private var journals: [JournalModel]
    
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
