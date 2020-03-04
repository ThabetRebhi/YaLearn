//
//  PDFReader.swift
//  YaLearn
//
//  Created by Thabet on 3/3/20.
//  Copyright © 2020 Thabet. All rights reserved.
//

import UIKit
import PDFKit

@available(iOS 11.0, *)
class PDFReader : UIViewController {
    
    @IBOutlet weak var PFDViewer: PDFView!
    @IBOutlet weak var thumbView: PDFThumbnailView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.viewDidAppear(true)
        
        PFDViewer.displayDirection = .vertical
        PFDViewer.usePageViewController(true)
        PFDViewer.pageBreakMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        PFDViewer.autoScales = true
        PFDViewer.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        
        guard let path = Bundle.main.url(forResource: "REBHI-Thabit-CV-FR 2020 U", withExtension: "pdf") else { return }
        PFDViewer.document = PDFDocument(url: path)
        
        thumbView.pdfView = PFDViewer
        thumbView.thumbnailSize = CGSize(width: 50, height: 50)
        thumbView.layoutMode = .vertical
        thumbView.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        PFDViewer.autoScales = true
    }
    
}
