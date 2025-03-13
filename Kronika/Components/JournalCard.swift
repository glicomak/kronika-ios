import SwiftUI

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
