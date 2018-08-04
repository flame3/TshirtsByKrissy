//
//  ShoppingCartViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

let cellID = "cellID"
class AccountVC: UIViewController {
 
    
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
    
    let sectionsHeader: [String] = ["Settings","Billing"]
    let s1Data: [String] = ["Row1", "Row2", "Row3", "Row4"]
    let s2Data: [String] = ["Row5", "Row6", "Row7", "Row8"]
    var sectionData: [Int: [String]] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationItem.title = "Account"
        navigationItem.rightBarButtonItem = rightShoppingCartButton
        navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)

        accountDetailsTableView.delegate = self
        accountDetailsTableView.dataSource = self
        
        sectionData = [0: s1Data, 1: s2Data]
        
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
        profileImage.heightAnchor.constraint(equalToConstant: (view.frame.height/2)-10).isActive = true
        
        
        accountDetailsTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 2).isActive = true
        accountDetailsTableView.leftAnchor.constraint(equalTo: profileImage.leftAnchor).isActive = true
        accountDetailsTableView.rightAnchor.constraint(equalTo: profileImage.rightAnchor).isActive = true
        accountDetailsTableView.heightAnchor.constraint(equalToConstant: (view.frame.height/2)-10).isActive = true
        
        
        
        
        
    }
    
    
    
    
    
    

    
    

   

}
