//
//  HomeViewController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let editBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Edit, target: self, action: #selector(editBook(_:)))
        navigationItem.leftBarButtonItem = editBarButtonItem
        
        let refreshBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Refresh, target: self, action: #selector(refreshPage(_:)))
        navigationItem.rightBarButtonItem = refreshBarButtonItem
    }
    
    func refreshPage(sender: AnyObject)  {
        print("Refresh Page")
    }

    func editBook(sender: AnyObject)  {
        print("Editing Book")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
