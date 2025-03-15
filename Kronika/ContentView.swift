import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    
    var body: some View {
        TabView() {
            EntriesView(context: context)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("Entries")
                }
            
            JournalsView(context: context)
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Journals")
                }
        }
    }
}

#Preview {
    ContentView()
}
