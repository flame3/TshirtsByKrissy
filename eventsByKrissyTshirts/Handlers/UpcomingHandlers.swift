//
//  UpcomingHandlers.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 10/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit


extension UpcomingViewController{
    @objc public func showShoppingBag(){
        //let shopVC = ShoppingCartController()
        let vc = UINavigationController(rootViewController: ShoppingCartController())
        present(vc, animated: true, completion: nil)
        
//        if shopVC.cart.count == 0 {
//            let alert = UIAlertController(title: "Shopping Cart is Empty", message: "Please add some items to your shopping cart", preferredStyle: UIAlertControllerStyle.actionSheet)
//            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//
//        } else{
//            let vc = UINavigationController(rootViewController: ShoppingCartController())
//            present(vc, animated: true, completion: nil)
//
//        }
        
        
            //let alert = Alert.showBasic(title: "Please select a value", msg: "No size or quantity selected", vc: self)
        
            
        
        
        
    }
}
