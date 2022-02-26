//
//  ShareListModel.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import Foundation
struct ShareListModel: Codable {
    let id: String?
    let user_id: String?
    let media_type: MediaType?
    let filename: String?
    let size: Double?
    let created_at: String?
    let md5Sum: String?
    let content_type: String?
    let video: String?
    let thumbnail_url, download_url: String?
    let resx, resy: Int?
  
  enum MediaType: String, Codable {
      case image = "image"
      case video =  "video"
  }
}
