//
//  BaseCoordinate.swift
//  KiliaroTest
//
//  Created by yahya on 2/23/22.
//

import Foundation
import UIKit

protocol Coordinatable:AnyObject {
    var rootViewController: UIViewController { get set }
    func coordinate(to window: UIWindow)
    func coordinate(to viewController: UIViewController)
}
extension Coordinatable {
    func coordinatePresent(to viewController: UIViewController) {
        viewController.present(rootViewController, animated: true)
    }
func coordinate(to viewController: UIViewController) {
    viewController.show(self.rootViewController, sender: nil)
}
    func coordinate(to window: UIWindow) {
        window.rootViewController = self.rootViewController
        window.makeKeyAndVisible()
        UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: {}, completion: nil)

    }
}
