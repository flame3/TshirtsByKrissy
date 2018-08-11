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
        cell.layer.cornerRadius = 10
        
        cell.tshirts = Tshirts[indexPath.item]
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Tshirts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: (view.frame.height/2)-87)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let layout = UICollectionViewFlowLayout()
        let upComingDetail = DetailVC(collectionViewLayout: layout)
        let upcomingImage = UIImage(named: Tshirts[indexPath.row].mainImage)
        upComingDetail.topImageView.image = upcomingImage
        //upComingDetail.
        navigationController?.pushViewController(upComingDetail, animated: true)
        
        
    }
    
}

