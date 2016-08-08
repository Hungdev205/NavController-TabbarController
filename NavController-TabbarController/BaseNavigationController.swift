//
//  BaseNavigationController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        // nut back doi thanh mau whiteColor()
        navigationBar.tintColor = UIColor.whiteColor()
        //
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName : UIFont(name: "SFUIText-Semibold", size: 26)!]
    }
    
}

