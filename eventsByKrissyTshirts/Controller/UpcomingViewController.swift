//
//  UpcomingViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class UpcomingViewController: UICollectionViewController  {
    
    var tshirts: [Tshirt]!
    
    
    let cellID = "cellID"
    let navUpComingNavController = UINavigationController(rootViewController: DetailVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tshirts = Tshirt.getAllUpcomingTshirts()
        setupNavBar()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(UpComingCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    
    fileprivate func setupNavBar(){
    
    navigationItem.title = "Upcoming Tshirts"
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "shopping-bag"), style: .plain, target: self, action: #selector(showShoppingBag))
    navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "list"), style: .plain, target: self, action: #selector(showProfile))
    
    }
   

}
