import SwiftUI

struct VideoDetailView: View {
    var selectedDate: Date?

    var body: some View {
        Group {
            if selectedDate != nil {
                Text("\(selectedDate!)")
            } else {
                Text("Detail view content goes here")
            }
        }
        .navigationBarItems(
            trailing: Button(action: {}) {
                HStack {
                    Text(Constants.Texts.downloadVideo)
                    Image(systemName: Constants.SFSymbols.squardAndArrowDown)
                }
            }
        )
        .navigationBarTitle("", displayMode: .inline)
    }
}
