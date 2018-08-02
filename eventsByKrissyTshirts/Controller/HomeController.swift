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
    

   
    
    let rightShoppingCartButton: UIBarButtonItem = {
        let btn = UIBarButtonItem()
        btn.image = UIImage(named: "shopping-bag")
        return btn
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
        navigationItem.rightBarButtonItem = rightShoppingCartButton
        navigationItem.leftBarButtonItem?.backgroundImage(for: .normal, style: .plain, barMetrics: .default)
        
    
        
        
        collectionView?.register(HomeCell.self, forCellWithReuseIdentifier: cellID)
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        setupCollectionView()
        
        
        
        
        view.addSubview(collectionView!)
      
        
    }

    
    
    //- Mark CollectionView Functions
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
        
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> HomeCell {
        var cell = HomeCell()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! HomeCell
        cell.layer.cornerRadius = 10
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



