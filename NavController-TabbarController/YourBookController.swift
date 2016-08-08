//
//  YourBookController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class YourBookController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
// create BarButtonItem cameraButtonItem ,add Selector
        let cameraButtonItem = UIBarButtonItem(barButtonSystemItem: .Camera , target: self, action: #selector(takeAPicute(_:)))
// them cameraButtonItem vao leftBarButtonItem cua navigation
//        navigationItem.leftBarButtonItem = cameraButtonItem
        let bookmarkButtonItem = UIBarButtonItem(barButtonSystemItem: .Bookmarks, target: self, action: #selector(bookMark(_:)))
// add 2 UIBarButtonItem vao array leftBatButtonItems cua navigationItem
        navigationItem.leftBarButtonItems = [cameraButtonItem, bookmarkButtonItem]
        
        }
    
    
    func takeAPicute(sender: AnyObject) {
        print("Taking a picture")
    }
    

    func bookMark(sender: AnyObject) {
        print("Bookmark ")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
