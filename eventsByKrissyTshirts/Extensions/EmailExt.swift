//
//  EmailExt.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 4/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

extension AboutViewController: MFMailComposeViewControllerDelegate {
    @objc public func sendEmail(){
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true, completion: nil)
        }else{
            showMailError()}
    }
    @objc public func configureMailController()-> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["contact@nicksdev.com"])
        mailComposerVC.setSubject("Hi Developer ")
        mailComposerVC.setMessageBody("Hi Developer,", isHTML: false)
        
        return mailComposerVC
    }
    
    @objc public func showMailError(){
        
        let sendMailErrorAlert = UIAlertController (title: "Could not send email", message: "Your device could not send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title:"OK",style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
        
    }
    
    
    @objc public func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil )
    }
}

class Alert {
    class func showBasic(title: String, msg: String, vc: UIViewController) {
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert )
        alert.addAction(UIAlertAction(title: "ok", style: .default , handler: nil))
        vc.present(alert, animated: true)
    }
}
