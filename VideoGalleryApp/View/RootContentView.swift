import SwiftUI

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .medium
    return dateFormatter
}()

struct RootContentView: View {
    @State private var dates = [Date]()

    var body: some View {
        NavigationView {
            VideosListView(dates: $dates)
                .navigationBarTitle(Text(Constants.Texts.videos))
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button(
                        action: {
                            withAnimation { self.dates.insert(Date(), at: 0) }
                        }
                    ) {
                        Image(systemName: "plus")
                    }
                )
            VideoDetailView()
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

