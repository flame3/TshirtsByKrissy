
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
        //        let layout = UICollectionViewFlowLayout()
        //        let controller = DetailVC(collectionViewLayout: layout)
        //        navigationController?.pushViewController(controller, animated: true)
        let layout = UICollectionViewFlowLayout()
        let upComingDetail = DetailVC(collectionViewLayout: layout)
        let upcomingImage = UIImage(named: Tshirts[indexPath.row].mainImage)
        upComingDetail.topImageView.image = upcomingImage
        //upComingDetail.
        navigationController?.pushViewController(upComingDetail, animated: true)
    }
    
}
