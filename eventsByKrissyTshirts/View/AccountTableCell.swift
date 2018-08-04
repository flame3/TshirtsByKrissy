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
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let arrowImg: UIImageView = {
        let arrow = UIImageView(image: UIImage(named: "next"))
        arrow.clipsToBounds = true
        arrow.contentMode = .scaleAspectFit
        arrow.translatesAutoresizingMaskIntoConstraints = false
        return arrow
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layer.cornerRadius = 0.5
        layer.shadowRadius = 2
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 1
       
        self.addSubview(cellLabel)
        self.addSubview(arrowImg)
        setupViews()
        
        
    }
    
    fileprivate func setupViews(){
        cellLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        cellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        cellLabel.heightAnchor.constraint(equalToConstant: 50)
        cellLabel.widthAnchor.constraint(equalToConstant: 50)
        
        arrowImg.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        arrowImg.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        arrowImg.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //arrowImg.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        //arrowImg.leftAnchor.constraint(equalTo: cellLabel.rightAnchor, constant: 50).isActive = true
        arrowImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
        arrowImg.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
