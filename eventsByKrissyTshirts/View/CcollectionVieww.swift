
//
//  collectionView.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 6/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class CollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame)
        
        
    }
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = HomeCell()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! HomeCell
        cell.backgroundColor = UIColor.white
        cell.layer.cornerRadius = 30
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    
    
    
    
    
    func setupCollectionView() {
        // need an x, y, height, and width constraint
        collectionVew.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionVew.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionVew.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionVew.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionVew.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        collectionVew.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        collectionVew.backgroundColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
    }
}
