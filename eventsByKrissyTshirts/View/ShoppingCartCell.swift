//
//  ShoppingCartCell.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class ShoppingCartCell: UICollectionViewCell {
    
    lazy var tshirtImageIV: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    lazy var titleTextLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .gray
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        lbl.text = "Just having Fun"
        return lbl
    }()
    
    lazy var sizeTextLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .gray
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.text = "XL"
        return lbl
    }()
    
    lazy var priceTextLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .gray
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        lbl.text = "$50"
        return lbl
    }()
    
    let dividerView: UIView = {
        let seperator = UIView()
        seperator.layer.borderColor = UIColor(red: 23/255, green: 12/255, blue: 200/255, alpha: 0.9).cgColor
        seperator.layer.borderWidth = 2
        seperator.translatesAutoresizingMaskIntoConstraints = false
        return seperator
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(tshirtImageIV)
        self.addSubview(titleTextLabel)
        self.addSubview(sizeTextLabel)
        self.addSubview(priceTextLabel)
        self.addSubview(dividerView)
        self.addSubview(containerView)
        
        
        
        
        setupViews()
    }
    
    func setupViews(){
        
        NSLayoutConstraint.activate([
            tshirtImageIV.topAnchor.constraint(equalTo: topAnchor),
            tshirtImageIV.leftAnchor.constraint(equalTo: leftAnchor),
            tshirtImageIV.heightAnchor.constraint(equalToConstant: frame.height/2),
            tshirtImageIV.widthAnchor.constraint(equalToConstant: 150),
            
            
            titleTextLabel.centerYAnchor.constraint(equalTo: tshirtImageIV.centerYAnchor, constant: -20),
            titleTextLabel.rightAnchor.constraint(equalTo: rightAnchor),
            titleTextLabel.heightAnchor.constraint(equalToConstant: 150),
            titleTextLabel.widthAnchor.constraint(equalToConstant: 200),
            
            sizeTextLabel.centerYAnchor.constraint(equalTo: tshirtImageIV.centerYAnchor, constant: 10),
            sizeTextLabel.centerXAnchor.constraint(equalTo: titleTextLabel.centerXAnchor, constant: -40),
            sizeTextLabel.heightAnchor.constraint(equalToConstant: 200),
            sizeTextLabel.widthAnchor.constraint(equalToConstant: 300),
            
            priceTextLabel.centerYAnchor.constraint(equalTo: tshirtImageIV.centerYAnchor, constant: 10),
            priceTextLabel.centerXAnchor.constraint(equalTo: titleTextLabel.centerXAnchor, constant: 30),
            priceTextLabel.heightAnchor.constraint(equalToConstant: 200),
            priceTextLabel.widthAnchor.constraint(equalToConstant: 300),
            
            dividerView.topAnchor.constraint(equalTo: tshirtImageIV.bottomAnchor, constant: 20),
            dividerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            dividerView.widthAnchor.constraint(equalToConstant: frame.width),
            dividerView.heightAnchor.constraint(equalToConstant: 1),
            
            containerView.topAnchor.constraint(equalTo: dividerView.bottomAnchor),
            containerView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            containerView.leftAnchor.constraint(equalTo: leftAnchor),
            containerView.rightAnchor.constraint(equalTo: rightAnchor)
            
    
            
            
            
            ])
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
