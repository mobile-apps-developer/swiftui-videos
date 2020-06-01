import SwiftUI

struct VideoDetailView: View {
    // MARK: - Properties

    let selectedVideo: Video

    // MARK: - View

    var body: some View {
        ScrollView {
            VStack {
                VideoPreview(thumbnailURL: selectedVideo.thumbnail) {
                }
                VideoDescriptionView(
                    title: selectedVideo.name,
                    videoDescription: selectedVideo.videoDescription
                )
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
