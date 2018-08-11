//
//  ShoppingViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 10/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class ShoppingCartController: UIViewController {
    
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .white
        return image
    }()
    
    lazy var glassView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        return view
    }()
    
    
    let shoppingCartCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        cv.register(ShoppingCartCell.self, forCellWithReuseIdentifier: cellID)
        cv.isScrollEnabled = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        layout.sectionInset = UIEdgeInsets(top: 2, left: 1, bottom: 0, right: 10)
        layout.scrollDirection = .horizontal
        return cv
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.addSubview(backgroundImageView)
        view.addSubview(glassView)
        view.addSubview(shoppingCartCollectionView)
        
        shoppingCartCollectionView.backgroundColor = .clear
        
        shoppingCartCollectionView.delegate = self
        shoppingCartCollectionView.dataSource = self
        
        setupNavBar()
        setupViews()
        
    }
    
    func setupNavBar(){
        
        navigationController?.navigationBar.topItem?.title = "Shopping Bag"
        //navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleBack))

        
        
    }
    
    func setupViews() {
        
        backgroundImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        backgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        glassView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        glassView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        glassView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        glassView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        glassView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        glassView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        shoppingCartCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        shoppingCartCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        shoppingCartCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        shoppingCartCollectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        shoppingCartCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        shoppingCartCollectionView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
