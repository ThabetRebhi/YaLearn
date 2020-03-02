//
//  HomeCollectionCell.swift
//  YaLearn
//
//  Created by Thabet on 3/2/20.
//  Copyright © 2020 Thabet. All rights reserved.
//

import UIKit

class HomeCollectionCell : UITableViewCell{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var CollectionView: UICollectionView!
    
    var indexPath: IndexPath?
    var collsArray: [BookModel] = []
    
    var sectionTitle: String = ""
    var currentVC = UIViewController()
    var detailedModel = BookModel(dictionary: [:])
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CollectionView.register(UINib(nibName: Constants.Cells.inCollectionCell, bundle: nil), forCellWithReuseIdentifier: Constants.Cells.inCollectionCell)
        
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
        CollectionView.delegate = self
        CollectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension HomeCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 120, height: 150)
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
}
