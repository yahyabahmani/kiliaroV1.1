//
//  UIImageView+Helper.swift
//  KiliaroTest
//
//  Created by yahya on 2/26/22.
//

import Foundation
import Kingfisher

extension UIImageView {
   func setImageWithKingFisher(url : String?,width:Int = 120,height:Int = 120) {
        if let u = url {
          let tempURL = u + "?w=\(width)&h=\(height)&m=md"
            if let urls = URL(string : tempURL) {
              self.kf.setImage(with: urls,placeholder: UIImage(named: "IMG_FA09D80EBD3F-1") ,options:[.transition(ImageTransition.fade(0.3))])
            }
        }
    }
  
}
