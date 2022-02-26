//
//  ShareListViewModel.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import Foundation
class ShareListViewModel:BaseViewModel{
  var success: (() -> ())?
  
  func getShareList(){
    
    MembershipService.getShareList {
      self.success?()
      
    } failure: { error in
      self.errorWithDismissViewController(message: error)
    }

  }
  
}
