import Foundation

struct Video: Codable {

    // MARK: - Properties

    let id: Int
    let name: String
    let thumbnail: String
    let videoDescription: String
    let videoLink: String

    // MARK: - Coding Keys

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case thumbnail
        case videoDescription = "description"
        case videoLink = "video_link"
    }
}

