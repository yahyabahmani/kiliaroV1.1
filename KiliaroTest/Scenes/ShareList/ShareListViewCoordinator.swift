//
//  ShareListViewCoordinator.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import Foundation
import UIKit

class ShareListViewCoordinator: Coordinatable {
  
  var rootViewController: UIViewController
  
  init() {
    let vc = ShareListViewController.instantiate()
    vc.modalPresentationStyle = .fullScreen
    vc.viewModel = ShareListViewModel()
    vc.viewModel?.delegate = vc
    self.rootViewController = vc
    vc.coordinator = self
  }
  
  func detailsShareList(shareList:ShareListRealm) {
    DetailsShareListViewCoordinator.init(item: shareList).coordinate(to: rootViewController)
  }
  
}
