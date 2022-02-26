//
//  AllShareListRealm.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import Foundation
import RealmSwift
class AllShareListRealm:Object{
  var shareLists = List<ShareListRealm>()
  @objc dynamic var id  = "1"
  
  override static func primaryKey() -> String? {
      return "id"
  }
  convenience init (_ option:[ShareListModel]) {
      self.init()
    for item in option {
      self.shareLists.append(ShareListRealm(item))
    }
  }
  
  
  fileprivate static var sharedInstance: AllShareListRealm?
         class var option: AllShareListRealm? {
             guard let realm = try? Realm() else { return nil }
             sharedInstance = realm.objects(AllShareListRealm.self).first
             return sharedInstance
         }
  
  
}
