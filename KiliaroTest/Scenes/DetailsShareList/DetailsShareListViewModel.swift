//
//  DetailsShareListViewModel.swift
//  KiliaroTest
//
//  Created by yahya on 2/26/22.
//

import Foundation
class DetailsShareListViewModel:BaseViewModel{
  var item = ShareListRealm()
   init(item:ShareListRealm) {
    self.item = item
  }
  
}
