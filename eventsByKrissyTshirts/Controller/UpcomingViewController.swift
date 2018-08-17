//
//  UpcomingViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class UpcomingViewController: UICollectionViewController  {
    
    var Tshirts: [Tshirt] = {
        var jesusShirt = Tshirt(mainImage: "jesus", title: "Just Live", price: "50")
        var peaceShirt = Tshirt(mainImage: "peace", title: "Peace, Love, Balance", price: "50")
        var getbackShirt = Tshirt(mainImage: "getBack", title: "Not too Close", price: "50")
        var coolShirt  = Tshirt(mainImage: "cool", title: "Like An A.C.", price: "50")
        var jeanShirt = Tshirt(mainImage: "jean", title: "Gotta be Fresh", price: "50")
        var jeffShirt = Tshirt(mainImage: "jeff", title: "Just Squint", price: "50")
        var lolipopShirt = Tshirt(mainImage: "lolipop", title: "Sweet like Candy", price: "50")
        
        return [jesusShirt, peaceShirt, getbackShirt, coolShirt, jeanShirt, jeffShirt, lolipopShirt]
    }()

    
    let cellID = "cellID"
    let navUpComingNavController = UINavigationController(rootViewController: DetailVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(UpComingCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    
    fileprivate func setupNavBar(){
    
    navigationItem.title = "Upcoming Tshirts"
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "shopping-bag"), style: .plain, target: self, action: #selector(showShoppingBag))
    navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)
    
    }
   

}
