//
//  SearchVC.swift
//  YaLearn
//
//  Created by Thabet on 3/1/20.
//  Copyright © 2020 Thabet. All rights reserved.
//

import UIKit

class SearchVC :UIViewController {
    
      var indexPath: IndexPath?
      var collsArray: [BookModel] = []
      @IBOutlet weak var modCollecList: UICollectionView!
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //self.navigationController?.navigationBar.isHidden = true
        
        modCollecList.register(UINib(nibName: Constants.Cells.inCollectionCell, bundle: nil), forCellWithReuseIdentifier: Constants.Cells.inCollectionCell)
               
               let dictionary = NSMutableDictionary()
               dictionary.setValue(1, forKey: "admin_video_id")
               dictionary.setValue(1, forKey: "category_id")
               dictionary.setValue(1, forKey: "Module_id")
               dictionary.setValue("PLAKA", forKey: "title")
               dictionary.setValue("book for dummies", forKey: "description")
               dictionary.setValue("", forKey: "default_image")
               dictionary.setValue("", forKey: "mobile_image")
               dictionary.setValue("", forKey: "picture")
               dictionary.setValue("", forKey: "wishlist_status")
               guard let book = BookModel(dictionary: dictionary) else {return}
               collsArray.append(book)
               collsArray.append(book)
               collsArray.append(book)
               collsArray.append(book)
               collsArray.append(book)
               collsArray.append(book)
               
               modCollecList.delegate = self
               modCollecList.dataSource = self
        
    }
}
extension SearchVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 80, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cells.inCollectionCell, for: indexPath) as? inCollectionCell {
            
            if let lab = collsArray[indexPath.row].title{
                cell.label.text = lab
            }
            
            return cell
        } else {
            
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: Constants.StoryboardIds.moreStories, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: Constants.ViewControllers.singleBookVC) as! singleBookVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
