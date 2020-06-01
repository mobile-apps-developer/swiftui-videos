import SwiftUI

struct VideosListView: View {
    @Binding var dates: [Date]

    var body: some View {
        List {
            ForEach(dates, id: \.self) { date in
                NavigationLink(
                    destination: VideoDetailView(selectedDate: date)
                ) {
                    Text("\(date)")
                }
            }.onDelete { indices in
                indices.forEach { self.dates.remove(at: $0) }
            }
        }
    }
}
