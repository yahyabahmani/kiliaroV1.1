//
//  UIInt+Helper.swift
//  KiliaroTest
//
//  Created by yahya on 2/26/22.
//

import Foundation
extension Double{
  func getByteSize()->String{
   return String(format: "%.2f",  (self / (1024 * 1024)))
  }
}
