//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Sydney Tivoli on 9/10/23.
//
import UIKit
import Nuke

class TrackCell: UITableViewCell {
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName

        // Load image asynchronously via Nuke library image loading helper method
        Nuke.loadImage(with: track.poster, into: trackImageView)
    }
}

