//
//  ShoppingCartViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

let cellID = "cellID"
class AccountViewController: UIViewController {
 
    
    let rightShoppingCartButton: UIBarButtonItem = {
        let btn = UIBarButtonItem()
        btn.image = UIImage(named: "shopping-bag")
        return btn
    }()
    
    let profileImage: UIImageView = {
        let img = UIImageView(image: UIImage(named: "placeholder"))
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let accountDetailsTableView: UITableView = {
        let tbv = UITableView()
        tbv.register(AccountTableCell.self, forCellReuseIdentifier: cellID)
        tbv.translatesAutoresizingMaskIntoConstraints = false
        return tbv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Account"
        navigationItem.rightBarButtonItem = rightShoppingCartButton
        navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)

        accountDetailsTableView.delegate = self
        accountDetailsTableView.dataSource = self
        
        addViews()
        setupElements()
        
        
    }
    
    fileprivate func addViews(){
        view.addSubview(profileImage)
        view.addSubview(accountDetailsTableView)
        
    }
    
    fileprivate func setupElements() {
        
    
        profileImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        profileImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        profileImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        accountDetailsTableView.topAnchor.constraint(equalTo: profileImage.bottomAnchor).isActive = true
        accountDetailsTableView.leftAnchor.constraint(equalTo: profileImage.leftAnchor).isActive = true
        accountDetailsTableView.rightAnchor.constraint(equalTo: profileImage.rightAnchor).isActive = true
        accountDetailsTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        
        
    }
    
    
    
    
    
    

    
    

   

}
