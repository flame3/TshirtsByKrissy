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
        let vc = UINavigationController(rootViewController: ShoppingCartController())
        present(vc, animated: true, completion: nil)
        
        
    }
    
    
    
}
