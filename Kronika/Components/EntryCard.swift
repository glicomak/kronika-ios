import SwiftUI

struct EntryCard: View {
    let entry: EntryModel
    
    private var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMMM d yyyy"
        return formatter.string(from: entry.date)
    }
    
    private var formattedTime: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a"
        return formatter.string(from: entry.date)
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(formattedDate)
            
            if entry.title == "" {
                Text(formattedTime)
            } else {
                Text("\(formattedTime): \(entry.title)")
            }
        }
        .padding(.horizontal)
    }
}
