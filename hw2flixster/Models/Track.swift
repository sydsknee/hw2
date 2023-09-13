//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//
import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    // Detail properties
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: Date
    let trackTimeMillis: Int
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(trackName: "Tesseract",
              artistName: "Mersiv",
              artworkUrl100: URL(string:"https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/f8/f2/3b/f8f23b57-2e81-ec11-9a39-02152aadfebe/5056495284260_1.jpg/100x100bb.jpg")!,
              collectionName: "Pretty Dark Loud",
              primaryGenreName: "Electronic",
              releaseDate: Date(timeIntervalSince1970: 1634870400),
              trackTimeMillis: 360857),
        Track(trackName: "Sky High (feat. Knat Turner)",
              artistName: "Mersiv",
              artworkUrl100: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/f8/f2/3b/f8f23b57-2e81-ec11-9a39-02152aadfebe/5056495284260_1.jpg/100x100bb.jpg")!,
              collectionName: "Pretty Dark Loud",
              primaryGenreName: "Electronic",
              releaseDate: Date(timeIntervalSince1970: 1634870400),
              trackTimeMillis: 360857),
        Track(trackName: "The Death Note",
              artistName: "Mersiv",
              artworkUrl100: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/f8/f2/3b/f8f23b57-2e81-ec11-9a39-02152aadfebe/5056495284260_1.jpg/100x100bb.jpg")!,
              collectionName: "Pretty Dark Loud",
              primaryGenreName: "Electronic",
              releaseDate: Date(timeIntervalSince1970: 1631865600),
              trackTimeMillis: 150000),
    ]
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
