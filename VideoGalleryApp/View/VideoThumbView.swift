import SDWebImageSwiftUI
import SwiftUI

struct VideoThumbView: View {

    // MARK: - View

    var body: some View {
        HStack {
            WebImage(url: URL(string: "https://i.picsum.photos/id/477/2000/2000.jpg"))
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .frame(
                    width: Constants.Metric.thumbImageWidth,
                    height: Constants.Metric.thumbImageHeight,
                    alignment: .center
                )
                .background(Color(UIColor.systemBackground))
                .cornerRadius(Constants.Metric.cornerRadius)
                .padding(Constants.Metric.padding)
            Text("How To Hold Your iPhone When Taking Photos")
                .font(.subheadline)
        }
    }
}
