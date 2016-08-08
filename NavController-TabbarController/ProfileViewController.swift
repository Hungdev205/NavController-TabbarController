//
//  ProfileViewController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let searchBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Search, target: self, action: #selector(searchBook(_:)))
        navigationItem.rightBarButtonItem = searchBarButtonItem
        
        let cameraBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Camera, target: self, action: #selector(takeAPicute(_:)))
        navigationItem.leftBarButtonItem = cameraBarButtonItem
    }
    
    func searchBook(sender: AnyObject) {
        print("Searching Book")
    }
    
    func takeAPicute(sender: AnyObject) {
        print("Taking a picture")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
