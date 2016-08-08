//
//  BaseTabbarController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/17/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = UIColor(red: 0.149, green: 0.2, blue: 0.225, alpha: 1.0)
        tabBar.translucent = false
        
        // TitleTextAttributes thay doi mau,font,size cho title UITabBarItem
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName : UIFont(name: "SFUIText-Regular", size: 12)!], forState: .Normal)
        
        

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // 3 viewController dua vao TabbarController
        let bookVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("YourBookVC") as! YourBookController
        
        let homeVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("HomeVC") as! HomeViewController
        
        let profileVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ProfileVC") as! ProfileViewController
        
        // add 3 NavigationController
        let bookNav = BaseNavigationController(rootViewController: bookVC)
        let homeNav = BaseNavigationController(rootViewController: homeVC)
        let profileNav = BaseNavigationController(rootViewController: profileVC)
        
        // Setting for NavigationItem
        settingNavigationForEachController(bookVC, tranparent: true, naviTitle: "BOOK", tabbarTitle: "BOOK", image: "Book", selectedImage: "Selected-URBook")
        
        settingNavigationForEachController(homeVC, tranparent: true, naviTitle: "HOME", tabbarTitle: "HOME", image: "Home", selectedImage: "Selected-Home")
        
        settingNavigationForEachController(profileVC, tranparent: true, naviTitle: "PROFILE", tabbarTitle: "PROFILE", image: "Profile", selectedImage: "Selected-Profile")
        // Add cac viewController vao trong Tabbar:
        viewControllers = [bookNav,homeNav,profileNav]
        
        
    }
    
    func settingNavigationForEachController(viewcontroller: BaseViewController, tranparent: Bool, naviTitle: String, tabbarTitle: String, image: String, selectedImage: String)  {
        
        
        viewcontroller.navigationItem.title = naviTitle
        viewcontroller.tabBarItem = UITabBarItem(title: tabbarTitle, image: UIImage(named: image)?.imageWithRenderingMode(.AlwaysOriginal), selectedImage: UIImage(named: selectedImage)?.imageWithRenderingMode(.AlwaysOriginal))
        // UIImage(name: image)?.imageWithRenderingMode(.AlwaysOriginal)  lay ve mau defaut cua image
        
        viewcontroller.tranparent = tranparent
        
    }
    
    
}
