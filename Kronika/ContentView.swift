import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            EntriesView()
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("Entries")
                }
            
            JournalsView()
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
