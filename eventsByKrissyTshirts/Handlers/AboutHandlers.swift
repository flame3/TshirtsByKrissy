//
//  AboutHandlers.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 4/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import Foundation
import UIKit
import StoreKit
import MessageUI

extension AboutViewController {
    
    
    @objc public func handleEmail(){
        sendEmail()
    }
    
    @objc public func openButtonUrl(urlStr:String!) {
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler: nil)
        }
        
    }
    
    @objc public func handleInstagram(){
        openButtonUrl(urlStr: "https://www.instagram.com/nicksdevelopment/")
    }
    @objc public func handleFacebook(){
        openButtonUrl(urlStr: "https://www.facebook.com/nicksdevelopment")
        
    }
    
    @objc public func handleWeb(){
        openButtonUrl(urlStr: "http://www.nicksdev.com")

    }
    
    @objc public func handleYoutube(){
        openButtonUrl(urlStr: "https://www.youtube.com/c/nicksdev")
        
    }
    
    @objc public func handleRate(){
        if #available(iOS 10.3, *) {
            SKStoreReviewController.requestReview()
        } else {
            Alert.showBasic(title: "Not available", msg: "Option available for devices on 10.3 or higher", vc: self)
        }
    }
}



// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToUIApplicationOpenExternalURLOptionsKeyDictionary(_ input: [String: Any]) -> [UIApplication.OpenExternalURLOptionsKey: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (UIApplication.OpenExternalURLOptionsKey(rawValue: key), value)})
}
