//
//  ShoppingCollection++Ext.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 10/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

extension ShoppingCartController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ShoppingCartCell
        return cell
    }
    
    
    
    
    
    
}
