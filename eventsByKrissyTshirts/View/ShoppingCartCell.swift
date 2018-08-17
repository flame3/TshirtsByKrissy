//
//  ShoppingCartCell.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class ShoppingCartCell: UICollectionViewCell {
    
    var ShoppingCartItems = [Tshirt]()
    
    
    lazy var tshirtImageIV: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .blue
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    lazy var titleTextLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        lbl.text = "Just having Fun"
        return lbl
    }()
    
    lazy var sizeTextLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.text = "XL"
        return lbl
    }()
    
    lazy var priceTextLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
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
    
    let deleteButton: UIButton = {
        let btn = UIButton(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        btn.setImage(#imageLiteral(resourceName: "cancel"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let editButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Edit", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        
        self.addSubview(tshirtImageIV)
        self.addSubview(titleTextLabel)
        self.addSubview(sizeTextLabel)
        self.addSubview(priceTextLabel)
        self.addSubview(dividerView)
        self.addSubview(containerView)
        self.addSubview(editButton)
        self.addSubview(deleteButton)
        
        
        
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
            sizeTextLabel.centerXAnchor.constraint(equalTo: titleTextLabel.centerXAnchor, constant: -20),
            sizeTextLabel.heightAnchor.constraint(equalToConstant: 100),
            sizeTextLabel.widthAnchor.constraint(equalToConstant: 200),
            
            priceTextLabel.centerYAnchor.constraint(equalTo: tshirtImageIV.centerYAnchor, constant: 10),
            priceTextLabel.centerXAnchor.constraint(equalTo: titleTextLabel.centerXAnchor, constant: 20),
            priceTextLabel.heightAnchor.constraint(equalToConstant: 100),
            priceTextLabel.widthAnchor.constraint(equalToConstant: 200),
            
            dividerView.topAnchor.constraint(equalTo: tshirtImageIV.bottomAnchor, constant: 20),
            dividerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            dividerView.widthAnchor.constraint(equalToConstant: frame.width),
            dividerView.heightAnchor.constraint(equalToConstant: 1),
            
            containerView.topAnchor.constraint(equalTo: dividerView.bottomAnchor),
            containerView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            containerView.leftAnchor.constraint(equalTo: leftAnchor),
            containerView.rightAnchor.constraint(equalTo: rightAnchor),
            
            deleteButton.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            deleteButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 25),
            deleteButton.heightAnchor.constraint(equalToConstant: 50),
            deleteButton.widthAnchor.constraint(equalToConstant: 50),
            
            editButton.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            editButton.rightAnchor.constraint(equalTo: rightAnchor),
            editButton.heightAnchor.constraint(equalToConstant: 100),
            editButton.widthAnchor.constraint(equalToConstant: 100),
            
            
            
            ])
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
