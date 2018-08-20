//
//  Cart.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 19/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class CartItems {
    var tshirtImage: UIImage
    var tshirtTitle: String
    var tshirtPrice: String
    
    
    init(image: UIImage, title: String, price: String) {
        self.tshirtImage = image
        self.tshirtTitle = title
        self.tshirtPrice = price
    }

    
}
