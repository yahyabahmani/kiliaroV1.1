//
//  StoryBoardName.swift
//  KiliaroTest
//
//  Created by yahya on 2/23/22.
//

import Foundation
import UIKit
enum StoryBoardName:String {
    case Main = "Main"
    case Home = "Home"
    case DetailsShareList = "DetailsShareList"
    var storyboard:UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
}
