//
//  HomeCell.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 6/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    // changes the color and makes the cell be highlighted
    override var isHighlighted: Bool{
        didSet{
            backgroundColor = isHighlighted ? .blue : .white
            PriceLabel.textColor = isHighlighted ? .white : .black
            SizeLabel.textColor = isHighlighted ? .white : .black
            print(isHighlighted)
        }
        
    }
    
    let PriceLabel: UILabel = {
        let label = UILabel()
        label.text = "$50"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let SizeLabel: UILabel = {
        let label = UILabel()
        label.text = "Ljl"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(PriceLabel)
        addSubview(SizeLabel)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        
        backgroundColor = .blue
        
        PriceLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        PriceLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        PriceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        PriceLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
     
        
        SizeLabel.centerXAnchor.constraint(equalTo: PriceLabel.centerXAnchor).isActive = true
        SizeLabel.centerYAnchor.constraint(equalTo: PriceLabel.bottomAnchor, constant: 5).isActive = true
        SizeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        SizeLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    
}
