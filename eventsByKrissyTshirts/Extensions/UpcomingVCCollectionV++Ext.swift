//
//  UpcomingViewControllerExt.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 28/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import Foundation
import UIKit


extension UpcomingViewController: UICollectionViewDelegateFlowLayout {
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! UpComingCell
        cell.layer.cornerRadius = 50
        cell.layer.shadowRadius = 25
        cell.layer.shadowOffset = CGSize(width: 20, height: 20)
        cell.layer.shadowOpacity = 1
        cell.layer.shadowColor = UIColor.black.cgColor


        cell.tshirts = Tshirts[indexPath.item]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Tshirts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
 
        let upcomingImage = UIImage(named: Tshirts[indexPath.row].mainImage)
        let imageHeight = upcomingImage?.size.height
        return CGSize(width: view.frame.width, height: imageHeight!)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let layout = UICollectionViewFlowLayout()
        let upComingDetail = DetailVC(collectionViewLayout: layout)
        let upcomingImage = UIImage(named: Tshirts[indexPath.row].mainImage)
        upComingDetail.topImageView.image = upcomingImage
        navigationController?.pushViewController(upComingDetail, animated: true)
        
        
    }
    
}

