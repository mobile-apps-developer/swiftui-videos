import SwiftUI

struct VideoDetailView: View {

    // MARK: - States

    @State private var isVideoPlaying = false

    // MARK: - Properties

    let selectedVideo: Video
    

    // MARK: - View

    var body: some View {
        ScrollView {
            VStack {
                VideoPreview(thumbnailURL: selectedVideo.thumbnail) {
                    self.isVideoPlaying = true
                }
                VideoDescriptionView(
                    title: selectedVideo.name,
                    videoDescription: selectedVideo.videoDescription
                )
            }
            .padding(Constants.Metric.padding)
            .sheet(isPresented: $isVideoPlaying) {
                AVPlayerView(videoURL: URL(string: self.selectedVideo.videoLink)!)
                    .edgesIgnoringSafeArea(.all)
            }
        }
        .navigationBarItems(
            trailing: Button(action: {

            }) {
                HStack {
                    Text(Constants.Texts.downloadVideo)
                    Image(systemName: Constants.SFSymbols.squardAndArrowDown)
                }
            }
        )
        .navigationBarTitle("", displayMode: .inline)
    }
}
