//
//  HomeBannerTopCell.swift
//  YaLearn
//
//  Created by Thabet on 3/2/20.
//  Copyright © 2020 Thabet. All rights reserved.
//

import UIKit

class HomeBannerTopCell : UITableViewCell{
    
    @IBOutlet weak var CellImage: UIImageView!
    @IBOutlet weak var CellTitle: UILabel!
    @IBOutlet weak var CellDescp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureMoreCellWith(list : BookModel, indexPath : IndexPath) {
        self.CellTitle.text = list.title
        self.CellDescp.text = list.description ?? ""
        //self.CellImage.sd_setImage(with: URL(string: list.mobile_image ?? ""), placeholderImage: UIImage(named: "default"), options: .refreshCached, completed: nil)
    }
    
}
