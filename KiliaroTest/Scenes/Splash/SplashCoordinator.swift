//
//  SplashCoordinator.swift
//  KiliaroTest
//
//  Created by yahya on 2/23/22.
//

import Foundation
import UIKit

class SplashCoordinator: Coordinatable {
    var rootViewController: UIViewController
    var appWindow:UIWindow
      init(with window:UIWindow) {
          self.appWindow = window
          let vc = SplashViewController.instantiate()
          self.rootViewController = vc
          let viewModel = SplashViewModel()
          vc.viewModel = viewModel
          viewModel.coordinator = self
          viewModel.delegate = vc
      }
  
  func showShareList() {

      ShareListViewCoordinator.init().coordinate(to: rootViewController)
  }
  
}
