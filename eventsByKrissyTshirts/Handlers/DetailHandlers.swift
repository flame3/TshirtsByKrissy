//
//  DetailHandlers.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 13/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

extension DetailVC{
    
    @objc func changeToBlueImage(_sender: UIButton){
        topImageView.image = UIImage(named: "placeholder")
        print("just changed to blue")
    }
    @objc func changeToYellowImage(_sender: UIButton){
        topImageView.image = UIImage(named: "placeholder")
        print("just changed to yellow")
    }
    @objc func changeToGreenImage(_sender: UIButton){
        topImageView.image = UIImage(named: "placeholder")
        print("just changed to green")
    }
    // Began to setup Payment process ran into issue with UIStackView
    // May just have to implement btns with constraints to avoid the obstacles
    @objc func gotoShoppingBag(){
        let vc = PaymentVC()
        present(vc, animated: true) {
            
        }
    }
    
    @objc func handleAddToBag(){
        //var items = [Tshirt] ()
        
        
        
        let shopVC = ShoppingCartCell()
        shopVC.tshirtImageIV = topImageView
        //shopVC.priceTextLabel = priceLabel
        //shopVC.sizeTextLabel = sizePickerView
        shopVC.ShoppingCartItems += [Tshirt(mainImage: "jesus", title: shopVC.titleTextLabel.text!, price: shopVC.priceTextLabel.text!)]
        
        print(shopVC.ShoppingCartItems.count)
        
    }
    
//    @objc func completePayment(size: Int, quantity: Int){
//
//
//        switch (size) {
//        case (0):
//            if quantity == 0{
//
//            }
//            if quantity == 1{
//
//            }
//            if quantity == 2{
//
//            }
//            if quantity == 3{
//
//            }
//            if quantity == 4{
//
//            }
//            if quantity == 5{
//
//            }
//            break
//        case (1):
//            if quantity == 0{
//
//            }
//            if quantity == 1{
//
//            }
//            if quantity == 2{
//
//            }
//            if quantity == 3{
//
//            }
//            if quantity == 4{
//
//            }
//            if quantity == 5{
//
//            }
//            break
//        case (2):
//            if quantity == 0{
//
//            }
//            if quantity == 1{
//
//            }
//            if quantity == 2{
//
//            }
//            if quantity == 3{
//
//            }
//            if quantity == 4{
//
//            }
//            if quantity == 5{
//
//            }
//            break
//        default:
//            print("please select a color you'd like")
//            break
//        }
//    }
    
}
