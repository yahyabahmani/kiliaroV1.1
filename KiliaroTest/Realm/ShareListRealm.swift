//
//  ShareListRealm.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import Foundation
import RealmSwift
class ShareListRealm:Object {
    @objc dynamic var id  = ""
    @objc dynamic var userID = ""
    @objc dynamic var filename = ""
    @objc dynamic var createdAt = ""
    @objc dynamic var thumbnailURL = ""
    @objc dynamic var downloadURL = ""
    @objc dynamic var resx = 0
    @objc dynamic var resy = 0
  @objc dynamic var mediaType = ""
  @objc dynamic var size = 0.0
  @objc dynamic var takenAt = ""
  @objc dynamic var guessedTakenAt = ""
  @objc dynamic var md5Sum = ""
  @objc dynamic var contentType = ""
  @objc dynamic var video = ""

    override static func primaryKey() -> String? {
        return "id"
    }
    convenience init (_ item :ShareListModel) {
         self.init()
        if let id = item.id {
          self.id = id
        }
      if let userID = item.user_id{
        self.userID = userID
      }
      if let filename = item.filename{
        self.filename = filename
      }
      if let createdAt = item.created_at{
        self.createdAt = createdAt
      }
      if let thumbnailURL = item.thumbnail_url{
        self.thumbnailURL = thumbnailURL
      }
      if let downloadURL = item.download_url{
        self.downloadURL = downloadURL
      }
      if let resx = item.resx{
        self.resx = resx
      }
      if let resy = item.resy{
        self.resy = resy
      }
      if let mediaType = item.media_type{
        self.mediaType = mediaType.rawValue
      }
      if let size = item.size{
        self.size = size
      }

      if let md5Sum = item.md5Sum{
        self.md5Sum = md5Sum
      }
      if let contentType = item.content_type{
        self.contentType = contentType
      }
      if let video = item.video{
        self.video = video
      }

    }
    
  fileprivate static var sharedInstance: ShareListRealm?
  
  class var instance: ShareListRealm? {
        guard let realm = try? Realm() else { return nil }
        sharedInstance = realm.objects(ShareListRealm.self).first
        return sharedInstance
    }
}
