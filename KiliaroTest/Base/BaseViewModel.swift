//
//  BaseViewModel.swift
//  KiliaroTest
//
//  Created by yahya on 2/23/22.
//

import Foundation
import UIKit

class BaseViewModel {
    weak var delegate: BaseViewModelDelegate?
    var coordinator: Coordinatable?
    func errorWithDismissViewController(message:String) {
        self.delegate?.showErrorMessageDismiss(message)
    }
  
}


protocol BaseViewModelDelegate: NSObjectProtocol { //TODO : remove Useless
    func showErrorMessageDismiss(_ message: String)
}
extension UIViewController: BaseViewModelDelegate {
    func showErrorMessageDismiss(_ message: String) {
      AlertTemplate.ShowAlert( message: message, vc: self) { (alert) in
                 self.dismiss(animated: true, completion: nil)
             }
    }

}
