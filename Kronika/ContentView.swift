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

struct EntriesView: View {
    var body: some View {
        Text("Entries screen")
    }
}

struct JournalsView: View {
    var body: some View {
        Text("Journals screen")
    }
}

#Preview {
    ContentView()
}
