//
//  ShareListCollectionViewCell.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import UIKit

class ShareListCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var heightConstraint: NSLayoutConstraint!
  
  @IBOutlet weak var widthConstraint: NSLayoutConstraint!
  @IBOutlet weak var sizeLabel: UILabel!
  @IBOutlet weak var ThumbnailImageView: UIImageView!
  
  func fill(item:ShareListRealm, width:Int, height:Int){
    self.sizeLabel.text = " \(item.size.getByteSize()) MB "
    sizeLabel.layer.masksToBounds = true
    sizeLabel.layer.cornerRadius = 5
    self.widthConstraint.constant = CGFloat(width)
    self.heightConstraint.constant = CGFloat(height)
    self.layoutIfNeeded()
    self.ThumbnailImageView.setImageWithKingFisher(url: item.thumbnailURL, width: width, height: height)
  }
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
