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
        
        
//        let shopCell = ShoppingCartCell()
//        let shopVC = ShoppingCartController()
//
//        didSet{
//
//            let image = topImageView.image
//            let price = priceLabel.text
//            let detailTitleLabel = titleLabel.text
//
//        }
//
//
//        shopCell.priceTextLabel = priceLabel
//        //.sizeTextLabel = sizePickerView
////        shopVC.ShoppingCartItems += [Tshirt(mainImage: "jesus", firstColor: "placeholder", SecondColor: "placeholder", ThirdColor: "placeholder",  title: shopVC.titleTextLabel.text!, price: shopVC.priceTextLabel.text!)]
//        shopVC.cart.append(CartItems(image: image!, title: price!, price: detailTitleLabel!))
        let vc = UINavigationController(rootViewController: ShoppingCartController())
        present(vc, animated: true, completion: nil)
        
        
        //print(shopVC.cart.count)
        
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
