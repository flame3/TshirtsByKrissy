//
//  HomeCell.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 6/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    var tshirts: Tshirt? {
        didSet{
            //
            if let tshirtimage = tshirts?.mainImage{
                TshirtImageView.image = UIImage(named: (tshirtimage))
            }
            
            PriceLabel.text = tshirts?.price
            TitleLabel.text = tshirts?.title
        }
        
    }
    
    
    
    
    let TshirtImageView: UIImageView = {
        let imageV = UIImageView(image: #imageLiteral(resourceName: "la"))
        imageV.layer.masksToBounds = true
        imageV.clipsToBounds = true
        imageV.translatesAutoresizingMaskIntoConstraints = false
        imageV.contentMode = .scaleAspectFill
        return imageV
    }()
    
    let TitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 2
        label.layer.masksToBounds = true
        label.clipsToBounds = true
        label.text = "Some Title"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let PriceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.text = "$50"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(TshirtImageView)
        addSubview(TitleLabel)
        addSubview(PriceLabel)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        
        
        
        TshirtImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        TshirtImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        TshirtImageView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        TshirtImageView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        TitleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        TitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        TitleLabel.heightAnchor.constraint(equalToConstant: 75).isActive = true
        TitleLabel.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        
        PriceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -2).isActive = true
        PriceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5).isActive = true
        PriceLabel.topAnchor.constraint(equalTo: TshirtImageView.bottomAnchor, constant: -50).isActive = true
        PriceLabel.heightAnchor.constraint(equalToConstant: frame.height/16).isActive = true
        PriceLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
}
