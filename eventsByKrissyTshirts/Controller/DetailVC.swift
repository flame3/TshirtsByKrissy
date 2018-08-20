//
//  UpComingDetailVC.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class DetailVC: UICollectionViewController {
    
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
    
    lazy var topImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "placeholder")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        iv.clipsToBounds = true
        return iv
    }()
    
    let titleLabel: UILabel = {
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
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "$50"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    
    lazy var blueShirtImageButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(changeToBlueImage), for: .touchUpInside)
        btn.backgroundColor = .blue
        return btn
    }()
    
    lazy var yellowImageButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.addTarget(self, action: #selector(changeToYellowImage), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .yellow
        return btn
    }()
    
    lazy var greenTshirtImageButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(changeToGreenImage(_sender:)), for: .touchUpInside)
        btn.backgroundColor = .green
        return btn
    }()
    
    lazy var differentColorContainerView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    lazy var selectorsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sizePickerView, quantityPickerView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    
    lazy var sizePickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.backgroundColor = .orange
       return picker
    }()
    
    lazy var quantityPickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.backgroundColor = .brown
        return picker
    }()
    
    lazy var addToBagButton: UIButton = {
       let btn = UIButton(type: .system)
        btn.setTitle("Add to Bag", for: .normal)
        btn.addTarget(self, action: #selector(handleAddToBag), for: .touchUpInside)
        btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.borderWidth = 3
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    
    let sizeArray = ["S","M","L","XL","2XL"]
    var quantityArray = ["1","2","3","4","5","6","7","8","9"]
    
    
    
    var selectedSize: String?
    var selectedQuantity: Int?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - ViewDidLoad
        
        sizePickerView.dataSource = self
        sizePickerView.delegate = self
        
        quantityPickerView.dataSource = self
        quantityPickerView.delegate = self

        setupElements()
        setupViews()
        print(123)
    }
    
    
    fileprivate func setupElements(){
        // MARK: - Adding Subviews
        view.addSubview(backgroundImageView)
        view.addSubview(glassView)
        view.addSubview(topImageView)
        view.addSubview(titleLabel)
        view.addSubview(priceLabel)
        view.addSubview(differentColorContainerView)
            differentColorContainerView.addSubview(blueShirtImageButton)
            differentColorContainerView.addSubview(yellowImageButton)
            differentColorContainerView.addSubview(greenTshirtImageButton)
        
        view.addSubview(selectorsStackView)
        view.addSubview(addToBagButton)
    }
    
    
    fileprivate func setupViews() {
       // MARK: - Constraints
        
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

        
        // setup Top Image View
        topImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        topImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        // setup Title Label
        titleLabel.topAnchor.constraint(equalTo: topImageView.topAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: topImageView.centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: topImageView.widthAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        // setup Price Label
        priceLabel.rightAnchor.constraint(equalTo: topImageView.rightAnchor, constant: 15).isActive = true
        priceLabel.bottomAnchor.constraint(equalTo: topImageView.bottomAnchor, constant: 5).isActive = true
        priceLabel.topAnchor.constraint(equalTo: topImageView.bottomAnchor, constant: 10).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: topImageView.frame.height/16).isActive = true
        priceLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        // setup Different Color Image Container
        differentColorContainerView.topAnchor.constraint(equalTo: topImageView.bottomAnchor, constant: 10).isActive = true
        differentColorContainerView.leftAnchor.constraint(equalTo: topImageView.leftAnchor, constant: 15).isActive = true
        //differentColorIVStackView.bottomAnchor.constraint(equalTo: topImageView.leftAnchor).isActive = true
        differentColorContainerView.rightAnchor.constraint(equalTo: topImageView.rightAnchor, constant: -15).isActive = true
        differentColorContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // setup blue image Button
        blueShirtImageButton.leftAnchor.constraint(equalTo: differentColorContainerView.leftAnchor).isActive = true
        blueShirtImageButton.topAnchor.constraint(equalTo: differentColorContainerView.topAnchor).isActive = true
        blueShirtImageButton.bottomAnchor.constraint(equalTo: differentColorContainerView.bottomAnchor).isActive = true
        blueShirtImageButton.widthAnchor.constraint(equalTo: differentColorContainerView.widthAnchor, multiplier: 1/3).isActive = true
        
        // setup yellow image Button
        yellowImageButton.leftAnchor.constraint(equalTo: blueShirtImageButton.rightAnchor).isActive = true
        yellowImageButton.topAnchor.constraint(equalTo: differentColorContainerView.topAnchor).isActive = true
        yellowImageButton.bottomAnchor.constraint(equalTo: differentColorContainerView.bottomAnchor).isActive = true
        yellowImageButton.widthAnchor.constraint(equalTo: differentColorContainerView.widthAnchor, multiplier: 1/3).isActive = true
        
        // setup green image Button
        greenTshirtImageButton.leftAnchor.constraint(equalTo: yellowImageButton.rightAnchor).isActive = true
        greenTshirtImageButton.rightAnchor.constraint(equalTo: differentColorContainerView.rightAnchor).isActive = true
        greenTshirtImageButton.topAnchor.constraint(equalTo: differentColorContainerView.topAnchor).isActive = true
        greenTshirtImageButton.bottomAnchor.constraint(equalTo: differentColorContainerView.bottomAnchor).isActive = true
        greenTshirtImageButton.widthAnchor.constraint(equalTo: differentColorContainerView.widthAnchor, multiplier: 1/3).isActive = true
        
        
        
        
        // setup Selectors StackView
        selectorsStackView.topAnchor.constraint(equalTo: differentColorContainerView.bottomAnchor, constant: 15).isActive = true
        selectorsStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        selectorsStackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        selectorsStackView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        
        // setup add to bag button
        addToBagButton.topAnchor.constraint(equalTo: selectorsStackView.bottomAnchor, constant: 25).isActive = true
        addToBagButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        addToBagButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive = true
        addToBagButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        addToBagButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
    }
    
}



