//
//  Cart.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 19/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class CartItem: NSObject {
    var tshirtImage: UIImage
    var tshirtTitle: String
    var tshirtPrice: String
    
    
    init(image: UIImage, title: String, price: String) {
        self.tshirtImage = image
        self.tshirtTitle = title
        self.tshirtPrice = price
    }
    
//    static func getAllItems() -> [CartItem]{
//        var Items: [CartItem] = []
//        for items in Cart {
//            let item = CartItem(image: items["Img"]!, title: items["Title"]!, price: items["Price"]!)
//            Items.append(item)
//        }
//        return Items
//    }
//    
    static let Cart = [
        
        ["Img": "placeholder","Title": "Be an Anomoly", "Price": "50"],
        ["Img": "placeholder","Title": "Whatever  ", "Price": "50"],
        ["Img": "placeholder","Title": "Never be Tamed", "Price": "50"],
        ["Img": "placeholder","Title": "Tomato or Tomoto  ", "Price": "50"],
        ["Img": "placeholder","Title": "Dont take any L's    ", "Price": "50"],
        ["Img": "placeholder","Title": "Dont fit into the Box  ", "Price": "50"],
        ["Img": "placeholder","Title": "No place like L.A.", "Price": "50"]
        ]
    
    
    
}
