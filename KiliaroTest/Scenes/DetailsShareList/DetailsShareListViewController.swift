//
//  DetailsShareListViewController.swift
//  KiliaroTest
//
//  Created by yahya on 2/26/22.
//

import UIKit

class DetailsShareListViewController: BaseViewController {
  @IBOutlet weak var createLabel: UILabel!
  @IBOutlet weak var DetailsImageView: UIImageView!
  var viewModel:DetailsShareListViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.DetailsImageView.setImageWithKingFisher(url: self.viewModel?.item.thumbnailURL, width: Int(self.view.frame.width), height: Int(self.view.frame.width))
      
      self.createLabel.text = self.convertDateFormater(item: self.viewModel?.item.createdAt ?? "")
 
      
    }
  

    
  @IBAction func closeAction(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }

  func convertDateFormater(item:String) -> String? {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat =  "yyyy-MM-dd'T'HH:mm:ssZ"
    let date = dateFormatter.date(from: item) ?? Date()
      dateFormatter.dateFormat = "yyyy/MM/dd"
      return dateFormatter.string(from: date)
      
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

extension DetailsShareListViewController:InstantiateViewControllerType{
    static var storyboardName: StoryBoardName {
        .DetailsShareList
    }
}
extension Date{
  func formatToString(_ calendar: Calendar = Calendar.current, format: String = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", locale: Locale = Locale(identifier: "fa")) -> String {
      let dateFormatter = DateFormatter()
      dateFormatter.locale = locale
      dateFormatter.dateFormat = format
      dateFormatter.calendar = calendar
      
      return dateFormatter.string(from: self)
  }
}
