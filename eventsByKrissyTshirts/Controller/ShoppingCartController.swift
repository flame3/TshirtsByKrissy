//
//  ShoppingViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 10/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class ShoppingCartController: UIViewController {
    
    var Item = [CartItem]()

    let shoppingCartCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        cv.register(ShoppingCartCell.self, forCellWithReuseIdentifier: cellID)
        cv.isScrollEnabled = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 1
        layout.sectionInset = UIEdgeInsets(top: 2, left: 1, bottom: 0, right: 10)
        layout.scrollDirection = .vertical
        return cv
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(shoppingCartCollectionView)
        shoppingCartCollectionView.backgroundColor = .white
        shoppingCartCollectionView.delegate = self
        shoppingCartCollectionView.dataSource = self
        setupNavBar()
        setupViews()
        //print("MARKKKKK!!!!!!! image: \(Cart?.tshirtImage),title: \(Cart?.tshirtTitle),price; \(Cart?.tshirtPrice)")
        
        
        addItemsToArray()
        
    }
    
    func addItemsToArray() {
        
        let detailCell = DetailVC()
        let img = detailCell.topImageView.image
        let title = detailCell.titleLabel.text
        let price = detailCell.priceLabel.text
        let items = CartItem(image: img!, title: title!, price: price!)
        Item.append(items)
        
        
    
        
        print("MMMAAARRRKKKK: \(Item)")
        
        
        print("MMMAAARRRKKKK: \(items)")
        
    }
    
    func setupNavBar(){
        
        navigationController?.navigationBar.topItem?.title = "Shopping Bag"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleBack))

        

    }
    
    
    func setupViews() {
        
        
        
        shoppingCartCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        shoppingCartCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        shoppingCartCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        shoppingCartCollectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        shoppingCartCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        shoppingCartCollectionView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
