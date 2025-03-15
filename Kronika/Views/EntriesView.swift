import SwiftUI
import SwiftData

struct EntriesView: View {
    let context: ModelContext
    
    @Query(filter: #Predicate<JournalModel> { $0.isActive }) private var activeJournals: [JournalModel]
    var activeJournal: JournalModel? {
        activeJournals.first
    }
    
    @Query var allEntries: [EntryModel]
    var entries: [EntryModel] {
        allEntries.filter { $0.journal == activeJournal }
    }
    
    var body: some View {
        NavigationView {
            if activeJournal != nil {
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(activeJournal!.title)
                                .font(.largeTitle)
                                .bold()
                            
                            Spacer()
                            
                            NavigationLink(destination: NewEntryView(activeJournal: activeJournal!, context: context)) {
                                Image(systemName: "plus.circle.fill")
                                    .imageScale(.large)
                            }
                        }
                        .padding(.horizontal)
                        
                        ForEach(entries) { entry in
                            Divider()
                            
                            EntryCard(entry: entry)
                                .listRowInsets(EdgeInsets())
                                .listRowSeparator(.hidden)
                        }
                    }
                    .padding()
                }
            } else {
                Text("Create a journal to get started")
            }
        }
    }
}
