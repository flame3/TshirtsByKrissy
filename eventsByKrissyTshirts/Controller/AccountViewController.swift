//
//  ShoppingCartViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

let cellID = "cellID"
class AccountViewController: UITableViewController {
 
    
    let rightShoppingCartButton: UIBarButtonItem = {
        let btn = UIBarButtonItem()
        btn.image = UIImage(named: "shopping-bag")
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Account"
        navigationItem.rightBarButtonItem = rightShoppingCartButton
        navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)

        tableView.delegate = self
        tableView.delegate = self
        
        
        
    }
    
    
    
    
    
    
    

    
    

   

}
