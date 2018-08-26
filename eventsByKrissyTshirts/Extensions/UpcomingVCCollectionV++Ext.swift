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


        cell.tshirts = tshirts[indexPath.item]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tshirts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
 
        let upcomingImage = UIImage(named: tshirts[indexPath.row].mainImage)
        let imageHeight = upcomingImage?.size.height
        return CGSize(width: view.frame.width, height: imageHeight!)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let layout = UICollectionViewFlowLayout()
        let upComingDetail = DetailVC(collectionViewLayout: layout)
        let upcomingImage = UIImage(named: tshirts[indexPath.row].mainImage)
        let upComingTitle = tshirts[indexPath.row].title
        let upcomingPrice = tshirts[indexPath.row].price
//        let upcomingFirstImage = UIImage(named: tshirts[indexPath.row].firstColorImage)
//        let upcomingSecondImage = UIImage(named: tshirts[indexPath.row].secondColorImage)
//        let upcomingThirdImage = UIImage(named: tshirts[indexPath.row].thirdColorImage)
        
//        upComingDetail.blueShirtImageButton.setImage(upcomingFirstImage, for: .normal)
//        upComingDetail.yellowImageButton.setImage(upcomingSecondImage, for: .normal)
//        upComingDetail.greenTshirtImageButton.setImage(upcomingThirdImage, for: .normal)
        upComingDetail.priceLabel.text = upcomingPrice
        upComingDetail.titleLabel.text = upComingTitle
        upComingDetail.topImageView.image = upcomingImage
        navigationController?.pushViewController(upComingDetail, animated: true)
        
        
    }
    
}

