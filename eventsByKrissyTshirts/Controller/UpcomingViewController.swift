//
//  UpcomingViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class UpcomingViewController: UICollectionViewController  {

    let rightShoppingCartButton: UIBarButtonItem = {
        let btn = UIBarButtonItem()
        btn.image = UIImage(named: "shopping-bag")
        return btn
    }()
    
    let cellID = "cellID"
    let navUpComingNavController = UINavigationController(rootViewController: DetailViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        
        

        collectionView?.backgroundColor = .white
        collectionView?.register(UpComingCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    fileprivate func setupNavBar(){
    
    navigationItem.title = "Upcoming Tshirts"
    navigationItem.rightBarButtonItem = rightShoppingCartButton
    navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)
    
    }
   

}


