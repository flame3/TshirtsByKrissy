//
//  File.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 10/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

extension HomeController {
    @objc public func showShoppingBag(){
        //Alert.showBasic(title: "Not available", msg: "Nothing to see here just yet", vc: self)
        
        let shopVC = ShoppingCartController()
        if shopVC.Item.count == 0 {
            let alert = UIAlertController(title: "Shopping Cart is Empty", message: "Nothing in your shopping cart just yet \nPlease Add a shirt", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Continue Shopping", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)

        } else{
            print("AYEEEE::   \(shopVC.Item.count)")
            let vc = UINavigationController(rootViewController: ShoppingCartController())
            present(vc, animated: true, completion: nil)
            
            
        }
        
        
        //let alert = Alert.showBasic(title: "Please select a value", msg: "No size or quantity selected", vc: self)
        
        
        
        
        
    }
    
    @objc public func showProfile(){
        // showcase side menu
        let profileVC = ProfileVC()
        present(profileVC, animated: true, completion: nil)
        
        
    }
}
