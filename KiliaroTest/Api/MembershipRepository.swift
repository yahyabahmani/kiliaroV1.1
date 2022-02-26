//
//  MembershipRepository.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import Foundation
class MembershipRepository {
    
  class func getShareList(success succeeds:@escaping ([ShareListModel])->(), failure failed:@escaping (String)->()){
      let url = ApiURL.ist_media_in_shared
      
      HTTPService.request(method: .get, andUrl: url, succeeded: { (hd:[ShareListModel]) in
        succeeds(hd)
        
      }) { (error) in
        failed(error.localizedDescription)
      }
  }
  
}
