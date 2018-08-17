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
    

    var Tshirts: [Tshirt] = {
        var whiteShirt = Tshirt(mainImage: "white-shirt", title: "Be an Anomoly", price: "50")
        var whateverShirt = Tshirt(mainImage: "whatever", title: "Whatever  ", price: "50")
        var stayWildShirt = Tshirt(mainImage: "stay-wild", title: "Never be Tamed", price: "50")
        var tomatoShirt  = Tshirt(mainImage: "tomato", title: "Tomato or Tomoto  ", price: "50")
        var undefeatedShirt = Tshirt(mainImage: "undefeated", title: "Dont take any L's    ", price: "50")
        var outcastShirt = Tshirt(mainImage: "outcast", title: "Dont fit into the Box  ", price: "50")
        var laShirt = Tshirt(mainImage: "la", title: "No place like L.A.", price: "50")
        
        return [whiteShirt, whateverShirt, stayWildShirt, tomatoShirt, undefeatedShirt, outcastShirt, laShirt]
    }()
    
    //- Mark   View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
       
        collectionView?.register(HomeCell.self, forCellWithReuseIdentifier: cellID)
        collectionView?.backgroundColor = .white
    }
    
    fileprivate func setupNavBar(){
        navigationItem.title = "Home"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "shopping-bag"), style: .plain, target: self, action: #selector(showShoppingBag))
        navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)

    }
}
