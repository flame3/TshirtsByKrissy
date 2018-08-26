//
//  ShoppingCollection++Ext.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 10/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

extension ShoppingCartController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
                return 11
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ShoppingCartCell
        
        
        
//        cell.tshirtImageIV.image =
//        cell.titleTextLabel.text = ""
//        cell.priceTextLabel.text = ""

   
        
        cell.layer.cornerRadius = 15
        cell.layer.shadowRadius = 2
        cell.layer.shadowColor = UIColor.gray.cgColor
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width)-20, height: (view.frame.height/2)-100)

    }
    
    
}
