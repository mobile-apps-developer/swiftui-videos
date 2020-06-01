import SDWebImageSwiftUI
import SwiftUI

struct VideoPreview: View {

    // MARK: Props

    let thumbnailURL: String


    let playAction: () -> Void

    var body: some View {
        ZStack {
            WebImage(url: URL(string: thumbnailURL))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(Color(UIColor.systemBackground))
                .cornerRadius(Constants.Metric.cornerRadius)
                .padding(Constants.Metric.padding)

             Button(action: {
                 self.playAction()
             }) {
                 HStack {
                     Image(systemName: Constants.SFSymbols.playCircle)
                         .resizable()
                         .foregroundColor(Color.white)
                         .frame(
                             width: Constants.Metric.videoPlayButtonWidth,
                             height: Constants.Metric.videoPlayButtonHeight
                         )
                         .aspectRatio(contentMode: .fill)
                 }
             }
            }
        }
}
