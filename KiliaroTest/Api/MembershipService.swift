//
//  MembershipService.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import Foundation
class MembershipService {
  
  class func getShareList(completion:@escaping ()->(), failure failed:@escaping (String)->()) {
    
    
    MembershipRepository.getShareList { shareList in
      let shareListTemp = AllShareListRealm(shareList)
      RealmService.shared.create(shareListTemp,update: true) { (error) in
        if error != nil {
          failed(ClientError.database.errorDescription ?? "")
        }
        completion()
      }
    } failure: { error in
      
      failed(error)
      
    }
    
  }
}
