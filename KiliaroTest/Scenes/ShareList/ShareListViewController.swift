//
//  ShareListViewController.swift
//  KiliaroTest
//
//  Created by yahya on 2/25/22.
//

import UIKit

class ShareListViewController: BaseViewController {
  var viewModel:ShareListViewModel?
  @IBOutlet weak var collection: UICollectionView!
  var refreshControl:UIRefreshControl!
  
  var width:Int = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.collection.registerCell(ShareListCollectionViewCell.nibName)
    self.setupRefreshController()
    self.bind()
    // Do any additional setup after loading the view.
  }
  func bind(){
    self.viewModel?.success = {[weak self] in
      self?.collection.reloadData()
      self?.refreshControl.endRefreshing()
    }
  }
  fileprivate func setupRefreshController() {
    self.refreshControl = UIRefreshControl()
    self.refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
    self.refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
    collection.addSubview(refreshControl)
  }
  @objc func refresh(sender:AnyObject)
  {
    self.viewModel?.getShareList()
  }
  
}

extension ShareListViewController:UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return AllShareListRealm.option?.shareLists.count ?? 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ShareListCollectionViewCell.nibName, for: indexPath) as! ShareListCollectionViewCell
    if let item = AllShareListRealm.option?.shareLists[indexPath.item] {
      cell.fill(item: item, width: self.width, height: self.width)
    }
    return cell
  }
  
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    self.width  = Int((collectionView.frame.width - 20 ) / 3)
    return CGSize(width: self.width, height: self.width)
    
  }
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if let item =  AllShareListRealm.option?.shareLists[indexPath.item] {
      (self.coordinator as? ShareListViewCoordinator)?.detailsShareList(shareList: item)
    }
  }
  
}





extension ShareListViewController:InstantiateViewControllerType{
  static var storyboardName: StoryBoardName {
    .Home
  }
}
