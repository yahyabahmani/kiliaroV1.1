//
//  UICollectionView+Helper.swift
//  KiliaroTest
//
//  Created by yahya on 2/26/22.
//

import Foundation
import UIKit
extension UICollectionView {
    func registerCell(_ name : String) {
        self.register(UINib(nibName: name, bundle: nil), forCellWithReuseIdentifier: name)
    }
}
