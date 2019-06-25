//
//  Tshirts.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 5/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class Tshirt: NSObject {
    var mainImage: String
    var firstColorImage: String
    var secondColorImage: String
    var thirdColorImage: String
    var title: String
    var price: String
    
    
    init(mainImage: String, FirstColor: String, SecondColor: String, ThirdColor: String, title: String, price: String) {
        self.mainImage = mainImage
        self.firstColorImage = FirstColor
        self.secondColorImage = SecondColor
        self.thirdColorImage = ThirdColor
        self.title = title
        self.price = price
    }
    
    static func getAllUpcomingTshirts() -> [Tshirt]{
        var Shirts: [Tshirt] = []
        for shirts in upcomingTshirtAttributes {
            let shirt = Tshirt(mainImage: shirts["MainImage"]!, FirstColor: shirts["FirstColor"]!, SecondColor: shirts["SecondColor"]!, ThirdColor: shirts["ThirdColor"]!, title: shirts["Title"]!, price: shirts["Price"]!)
            Shirts.append(shirt)
        }
        return Shirts
    }
    
    static func getAllHomeTshirts() -> [Tshirt]{
        var Shirts: [Tshirt] = []
        for shirts in homeTshirtAttributes {
            let shirt = Tshirt(mainImage: shirts["MainImage"]!, FirstColor: shirts["FirstColor"]!, SecondColor: shirts["SecondColor"]!, ThirdColor: shirts["ThirdColor"]!, title: shirts["Title"]!, price: shirts["Price"]!)
            Shirts.append(shirt)
        }
        return Shirts
    }
    
    static let upcomingTshirtAttributes = [
        
        ["MainImage": "jesus", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Just Live", "Price": "$19.99"],
        ["MainImage": "peace", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Peace, Love, Balance", "Price": "$25"],
        ["MainImage": "getBack", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Not too Close", "Price": "$24.99"],
        ["MainImage": "cool", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Like An A.C.", "Price": "$24.99"],
        ["MainImage": "jean", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Gotta be Fresh", "Price": "$19.99"],
        ["MainImage": "jeff", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Just Squint", "Price": "$21.99"],
        ["MainImage": "lolipop", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Sweet like Candy", "Price": "$15.99"],
    ]
    
    static let homeTshirtAttributes = [
    
        ["MainImage": "white-shirt", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder", "Title": "Be an Anomoly", "Price": "$19.99"],
        ["MainImage": "whatever", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Whatever  ", "Price": "$24.99"],
        ["MainImage": "stay-wild", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Never be Tamed", "Price": "$21.99"],
        ["MainImage": "tomato", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Tomato or Tomoto  ", "Price": "$19.99"],
        ["MainImage": "undefeated", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Dont take any L's    ", "Price": "$24.99"],
        ["MainImage": "outcast", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "Dont fit into the Box  ", "Price": "$24.99"],
        ["MainImage": "la", "FirstColor": "placeholder", "SecondColor": "placeholder", "ThirdColor": "placeholder","Title": "No place like L.A.", "Price": "$19.99"],
    ]

}


