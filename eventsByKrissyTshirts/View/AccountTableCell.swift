//
//  AccountViewControllerTVcell.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 2/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class  AccountTableCell: UITableViewCell {
    let cellLabel: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    let arrowImg: UIImageView = {
        let arrow = UIImageView(image: UIImage(named: "arrow"))
        arrow.contentMode = .scaleAspectFit
        return arrow
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layer.cornerRadius = 0.5
        layer.shadowRadius = 2
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 1
       
        setupViews()
        
        
    }
    
    fileprivate func setupViews(){
        cellLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        cellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        cellLabel.heightAnchor.constraint(equalToConstant: self.frame.height/3)
        cellLabel.widthAnchor.constraint(equalToConstant: 50)
        
        arrowImg.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        arrowImg.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        arrowImg.heightAnchor.constraint(equalToConstant: self.frame.height/3)
        arrowImg.widthAnchor.constraint(equalToConstant: 50)
        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
