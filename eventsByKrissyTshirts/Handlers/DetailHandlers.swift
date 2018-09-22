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
        
        Alert.showBasic(title: "Not available", msg: "Nothing to see here just yet", vc: self)
            
        }
    
    
    @objc func handleAddToBag()->[CartItem]{

        let shopVC = ShoppingCartController()
            let image1 = topImageView.image
            let priceL = priceLabel.text
            let titleL = titleLabel.text



        
        var cart:[CartItem] = []
            
            
            let newitem = CartItem(image: image1!, title: titleL!, price: priceL!)
        
            cart.append(newitem)
            shopVC.Item += cart
            present(shopVC, animated: true, completion: nil)
            return cart
        }
    
//      shopVC.ShoppingCartItems += [Tshirt(mainImage: "jesus", firstColor: "placeholder", SecondColor: "placeholder", ThirdColor: "placeholder",  title: shopVC.titleTextLabel.text!, price: shopVC.priceTextLabel.text!)]
//        shopVC.cart.append(CartItems(image: image!, title: price!, price: detailTitleLabel!))
//
        
        
        
    
    
    
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
