//
//  SplashViewModel.swift
//  KiliaroTest
//
//  Created by yahya on 2/23/22.
//

import Foundation
class SplashViewModel: BaseViewModel {
  var success: (() -> ())?
  
  func getShareList(){
    
    MembershipService.getShareList {
      self.success?()
      
    } failure: { error in
      self.errorWithDismissViewController(message: error)
    }

  }
  
  
  func showShareList() {
    (self.coordinator as? SplashCoordinator)?.showShareList()
  }
}
