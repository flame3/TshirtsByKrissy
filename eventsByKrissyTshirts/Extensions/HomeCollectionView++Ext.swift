
//
//  HomeCollectionView++Ext.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 11/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

extension HomeController: UICollectionViewDelegateFlowLayout{
    
    //- Mark CollectionView Functions
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tshirts.count
        
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> HomeCell {
        var cell = HomeCell()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! HomeCell
        cell.layer.cornerRadius = 50
        cell.layer.shadowRadius = 25
        cell.layer.shadowOffset = CGSize(width: 20, height: 20)
        cell.layer.shadowOpacity = 1
        cell.layer.shadowColor = UIColor.black.cgColor
        
        cell.tshirts = tshirts[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //width for iphone x   need to find size for other devices
        let homeImage = UIImage(named: tshirts[indexPath.row].mainImage)
        let imageHeight =  (homeImage?.size.height)! + 100
        return CGSize(width: view.frame.width, height: imageHeight)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
        let layout = UICollectionViewFlowLayout()
        let homeDetail = DetailVC(collectionViewLayout: layout)
        let homeImage = UIImage(named: tshirts[indexPath.row].mainImage)
        homeDetail.topImageView.image = homeImage
        navigationController?.pushViewController(homeDetail, animated: true)
    }
    
}
