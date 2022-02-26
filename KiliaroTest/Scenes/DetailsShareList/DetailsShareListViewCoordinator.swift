//
//  DetailsShareListViewCoordinator.swift
//  KiliaroTest
//
//  Created by yahya on 2/26/22.
//

import Foundation
import UIKit
class DetailsShareListViewCoordinator: Coordinatable {
    
    var rootViewController: UIViewController

  init(item:ShareListRealm) {
      let vc = DetailsShareListViewController.instantiate()
      vc.modalPresentationStyle = .overCurrentContext
      vc.modalTransitionStyle = .crossDissolve
      vc.viewModel = DetailsShareListViewModel(item: item)
      vc.viewModel?.delegate = vc
      self.rootViewController = vc
      vc.viewModel?.coordinator = self
       }
   
    
}
