//
//  SearchResultCell.swift
//  BookSearch
//
//  Created by wangyue on 2016/11/4.
//  Copyright © 2016年 Razeware. All rights reserved.
//

import UIKit

class SearchResultCell: UITableViewCell {
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var artistNameLabel: UILabel!
  @IBOutlet weak var artworkImageView: UIImageView!
  
  var downloadTask: URLSessionDownloadTask?
  
  override func awakeFromNib() {
    super.awakeFromNib()
    let selectedView = UIView(frame: CGRect.zero)
    //change color for press down
    selectedView.backgroundColor = UIColor(red: 188/255, green: 188/255,
                                           blue: 188/255, alpha: 0.5)
    selectedBackgroundView = selectedView
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  func configure(for searchResult: SearchResult) {
    nameLabel.text = searchResult.name
    
    if searchResult.artistName.isEmpty {
      artistNameLabel.text = NSLocalizedString("Unknown Author Name", comment: "Unknown artist name")
    } else {
      artistNameLabel.text = String(format: NSLocalizedString("ARTIST_NAME_LABEL_FORMAT", comment: "Format for artist name label"), searchResult.artistName, searchResult.kindForDisplay())
    }
    
    artworkImageView.image = UIImage(named: "37")
    if let smallURL = URL(string: searchResult.artworkSmallURL) {
      downloadTask = artworkImageView.loadImage(url: smallURL)
    }
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    
    downloadTask?.cancel()
    downloadTask = nil
  }
}
