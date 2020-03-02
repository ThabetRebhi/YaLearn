//
//  LaunchVC.swift
//  YaLearn
//
//  Created by Thabet on 3/1/20.
//  Copyright © 2020 Thabet. All rights reserved.
//

import UIKit

class LaunchVC : UIViewController{
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    var workCount: Int = 0
    
    let defaults = UserDefaults.standard
    var loginStr = String()
    var dict : [String : AnyObject]!
    var dictLocal = Dictionary<String, Any>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myActivityIndicator.startAnimating()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = true;
        //myActivityIndicator.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
            self.checkIfLoggedIn()
        })
    }
    
    fileprivate func checkIfLoggedIn() {
        beginWork()
        self.performSegue(withIdentifier: Constants.SegueIds.homeVC, sender: self)
        workFinished()
    }
    
    fileprivate func beginWork() {
        
        workCount += 1
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }

    fileprivate func workFinished() {
        workCount -= 1
        if workCount == 0 {
            myActivityIndicator.stopAnimating()
            myActivityIndicator.isHidden = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
