import CoreGraphics
import Foundation
import SwiftUI

enum Constants {}

// MARK: - Metric values

extension Constants {
    enum Metric {
        static let padding: CGFloat = 8.0
        static let cornerRadius: CGFloat = 5.0
        static let thumbImageHeight: CGFloat = 60.0
        static let thumbImageWidth: CGFloat = 60.0
    }
}

// MARK: - Texts

extension Constants {
    enum Texts {
        static let videos = "Videos"
        static let downloadVideo = "Download Video"
        static let cancelDownload = "Cancel Download"
        static let loading = "Loading..."
    }

    // MARK: - SFSymbols
}

extension Constants {
    enum SFSymbols {
        static let playCircle = "play.circle"
        static let squardAndArrowDown = "square.and.arrow.down"
    }
}

// MARK: - AccessibilityIndentifiers

extension Constants {
    enum AccessibilityIndentifiers {
        static let downloadProgressBarIdentifier = "VideoDownloadProgressBar"
        static let playVideoButtonIdentifier = "PlayVideoButton"
        static let videoListTableIdentifier = "VideoListTable"
        static let cancelDownloadButtonIdentifier = "CancelDownloadButton"
        static let downloadVideoButtonIdentifier = "DownloadVideoButton"
        static let loadingTextIdentifier = "LoadingText"
    }
}
