//
//  SplashViewController.swift
//  KiliaroTest
//
//  Created by yahya on 2/23/22.
//

import UIKit

class SplashViewController: BaseViewController {
  @IBOutlet weak var indicator: UIActivityIndicatorView!
  var viewModel:SplashViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.indicator.startAnimating()
        self.bindViewMode()
        self.viewModel?.getShareList()
        // Do any additional setup after loading the view.
    }
    
  func bindViewMode() {
    self.viewModel?.success = {[weak self] in
      self?.viewModel?.showShareList()
    }
  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension SplashViewController:InstantiateViewControllerType{
    static var storyboardName: StoryBoardName {
        .Main
    }

    
    
}
