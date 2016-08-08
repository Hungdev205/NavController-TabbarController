//
//  BaseViewController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    var tranparent: Bool?{
        didSet{
            if tranparent == true {
                setTranparentForUINavigationBar()
            }
        }
    }
    
    var setTitleForBackButton: String?{
        didSet{
            guard let title = setTitleForBackButton else {return}
            
            setTitleForBackButton(title)
        }
    }
    
    // func lam mo backgroundImage ,shadowImge cua navigationBar
    func setTranparentForUINavigationBar() {
        // setBackgroundImage = UIImage() image rong~
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        // navigationBar.shadowImge = duong vien bao quanh navigationBar
        navigationController?.navigationBar.shadowImage = UIImage() // shadowImage = 1 image rong~
        
    }
    
    // func set title cho nut Back
    func setTitleForBackButton(title: String) {
        let backButton = UIBarButtonItem()
        
        backButton.title = title
        
        navigationItem.backBarButtonItem = backButton
    }
    // MARK: Update Contraints
    
    func updateContraint(contraint : NSLayoutConstraint!){
        print(contraint.constant)
        
        let scale = UIScreen.mainScreen().bounds.size.height / 667
        
        contraint.constant = contraint.constant * scale
        
        print(contraint.constant)
    }
    
}
