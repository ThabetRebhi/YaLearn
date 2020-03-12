//
//  singleBookVC.swift
//  YaLearn
//
//  Created by Thabet on 3/4/20.
//  Copyright © 2020 Thabet. All rights reserved.
//

import UIKit

class singleBookVC : UIViewController {
    
    @IBOutlet weak var PDFthumbnail: UIImageView!
    @IBOutlet weak var booktitle: UILabel!
    @IBOutlet weak var bookDescrip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
        guard let path = Bundle.main.url(forResource: "2", withExtension: "pdf") else { return }
        PDFthumbnail.image = drawPDFfromURL(url: path)
    }
    @IBAction func ReadButtAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: Constants.StoryboardIds.moreStories, bundle: nil)
        
        if #available(iOS 11.0, *) {
            let vc = storyboard.instantiateViewController(withIdentifier: Constants.ViewControllers.PDFReaderVC) as! PDFReaderVC
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            
        }
            
    }
    
    func drawPDFfromURL(url: URL) -> UIImage? {
        guard let document = CGPDFDocument(url as CFURL) else { return nil }
        guard let page = document.page(at: 1) else { return nil }

        let pageRect = page.getBoxRect(.mediaBox)
        let renderer = UIGraphicsImageRenderer(size: pageRect.size)
        let img = renderer.image { ctx in
            UIColor.white.set()
            ctx.fill(pageRect)

            ctx.cgContext.translateBy(x: 0.0, y: pageRect.size.height)
            ctx.cgContext.scaleBy(x: 1.0, y: -1.0)

            ctx.cgContext.drawPDFPage(page)
        }
        return img
    }

}
