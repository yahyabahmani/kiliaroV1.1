//
//  RealmService.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import Foundation
import RealmSwift

class RealmService {
    private var   realm:Realm

    static let shared = RealmService()
    private init() {
        realm = try! Realm()
     }

    func create<T : Object>(_ object : T ,update:Bool = false, completion : @escaping(Error?) -> Void) {
        do {
            try realm.write {
                if update {
                realm.add(object, update: .all)
                }else{
                    realm.add(object)
                    
                }
                completion(nil)
            }
        } catch {
            completion(error)
        }
    }
    
    
}



