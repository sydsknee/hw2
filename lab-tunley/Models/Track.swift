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
    let poster: URL
    let artistName: String
    // Detail properties
    let overview: String
    let original_language: String
    let releaseDate: Date
    let vote_count: Int
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(trackName: "Meg 2: The Trench",
              poster: URL(string:"/4m1Au3YkjqsxF8iwQy0fPYSxE0h/100x100bb.jpg")!,
              artistName: "n/a",
              overview: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
              original_language: "en",
              releaseDate: Date(timeIntervalSince1970: 1634870400),
              vote_count: 1661),
        Track(trackName: "Barbie",
              poster: URL(string: "/iuFNMS8U5cb6xfzi51Dbkovj7vM/100x100bb.jpg")!,
              artistName: "n/a",
              overview: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
              original_language: "en",
              releaseDate: Date(timeIntervalSince1970: 1634870400),
              vote_count: 4122),
        Track(trackName: "The Nun II",
              poster: URL(string:"/5gzzkR7y3hnY8AD1wXjCnVlHba5/100x100bb.jpg")!,
              artistName: "n/a",
              overview: "In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.",
              original_language: "en",
              releaseDate: Date(timeIntervalSince1970: 1631865600),
              vote_count: 110),
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
