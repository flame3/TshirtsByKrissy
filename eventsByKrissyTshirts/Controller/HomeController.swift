//
//  ViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 4/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController{
  
    let cellID = "cellID"
    

    var tshirts: [Tshirt]!
       
    
    
    //- Mark   View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
       
        self.tshirts = Tshirt.getAllHomeTshirts()

        collectionView?.register(HomeCell.self, forCellWithReuseIdentifier: cellID)
        collectionView?.backgroundColor = .white
    }
    
    fileprivate func setupNavBar(){
        navigationItem.title = "Home"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "shopping-bag"), style: .plain, target: self, action: #selector(showShoppingBag))
        navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)

    }
}
