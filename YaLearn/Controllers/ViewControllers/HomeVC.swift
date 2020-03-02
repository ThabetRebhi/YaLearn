//
//  HomeVC.swift
//  YaLearn
//
//  Created by Thabet on 3/1/20.
//  Copyright © 2020 Thabet. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var HomeTableView: UITableView!
    
    var arrayList = [BookModel]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        arrayList.append(book)
        HomeTableView.dataSource = self
        
        HomeTableView.register(UINib(nibName: Constants.Cells.HomeBannerTopCell, bundle: nil), forCellReuseIdentifier: Constants.Cells.HomeBannerTopCell)
        HomeTableView.reloadData()
        //HomeTableView.delegate = self
        
        
        
    }
    
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayList.count
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cells.HomeBannerTopCell, for: indexPath) as? HomeBannerTopCell {
            
            cell.configureMoreCellWith(list: arrayList[indexPath.row], indexPath: indexPath)
            cell.selectionStyle = .none
            print("CELL UPDATED")
            return cell
            
        } else {
            
            return UITableViewCell()
        }
    }
    
    
}
