import SwiftUI
import SwiftData

@main
struct KronikaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: JournalModel.self)
        }
    }
}
