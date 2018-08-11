//
//  ViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 4/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
  
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
   
    
 
    
//    let bannerImage: UIImageView = {
//        let bi = UIImageView()
//        bi.translatesAutoresizingMaskIntoConstraints = false
//        
//    
//        return bi
//    }()
    
   
    //- Mark   View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "shopping-bag"), style: .plain, target: self, action: #selector(showShoppingBag))
        navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)
        
    
        
        
        collectionView?.register(HomeCell.self, forCellWithReuseIdentifier: cellID)
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        setupCollectionView()
        
        
        
        
        view.addSubview(collectionView!)
      
        
    }

    
    
    //- Mark CollectionView Functions
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Tshirts.count
        
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> HomeCell {
        var cell = HomeCell()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! HomeCell
        cell.layer.cornerRadius = 10
        
        cell.tshirts = Tshirts[indexPath.item]
        return cell
    }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //width for iphone x   need to find size for other devices
        return CGSize(width: (view.frame.width/2), height: (view.frame.height/2)-87)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
        let layout = UICollectionViewFlowLayout()
        let controller = DetailVC(collectionViewLayout: layout)
        navigationController?.pushViewController(controller, animated: true)
    }
    
    





    //- Mark   Setup Views 
    func setupCollectionView() {
        // need an x, y, height, and width constraint
        collectionView?.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        collectionView?.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        collectionView?.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        collectionView?.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        collectionView?.backgroundColor = .white
        
        
    }
    
 
 
   
    override var preferredStatusBarStyle: UIStatusBarStyle {
       return .lightContent
    }
    

}



