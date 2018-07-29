//
//  UpComingDetailVC.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class UpComingDetailVC: UICollectionViewController {
    
    let topImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "placeholder")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let differentColorIVStackView: UIStackView = {
        let blueShirtImageButton = UIButton(type: .system)
        blueShirtImageButton.backgroundColor = .blue
        let yellowShirtImageButton = UIButton(type: .system)
        yellowShirtImageButton.backgroundColor = .yellow
        let greenShirtImageButton = UIButton(type: .system)
        greenShirtImageButton.backgroundColor = .green
        let stackView = UIStackView(arrangedSubviews: [blueShirtImageButton, yellowShirtImageButton, greenShirtImageButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        return stackView
    }()
    
    lazy var selectorsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sizePickerView, quantityPickerView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    
    let sizePickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.backgroundColor = .orange
       return picker
    }()
    
    let quantityPickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.backgroundColor = .brown
        return picker
    }()
    
    let addToBagButton: UIButton = {
       let btn = UIButton(type: .system)
        btn.setTitle("Add to Bag", for: .normal)
        btn.addTarget(self, action: #selector(gotoShoppingBag), for: .touchUpInside)
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
        
        
        
        sizePickerView.dataSource = self
        sizePickerView.delegate = self
        
        quantityPickerView.dataSource = self
        quantityPickerView.delegate = self
        
        
        setupElements()
        setupViews()
        print(123)
    }
    
    @objc func gotoShoppingBag(){
        print("just hit button")
    }
    
    fileprivate func setupElements(){
        view.addSubview(topImageView)
        view.addSubview(differentColorIVStackView)
        view.addSubview(selectorsStackView)
        view.addSubview(addToBagButton)
    }
    
    fileprivate func setupViews() {
       
        
        // setup Top Image View
        topImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        topImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        // setup Different Color Image View
        differentColorIVStackView.topAnchor.constraint(equalTo: topImageView.bottomAnchor, constant: 10).isActive = true
        differentColorIVStackView.leftAnchor.constraint(equalTo: topImageView.leftAnchor, constant: 15).isActive = true
        //differentColorIVStackView.bottomAnchor.constraint(equalTo: topImageView.leftAnchor).isActive = true
        differentColorIVStackView.rightAnchor.constraint(equalTo: topImageView.rightAnchor, constant: -15).isActive = true
        differentColorIVStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        // setup Selectors StackView
        selectorsStackView.topAnchor.constraint(equalTo: differentColorIVStackView.bottomAnchor, constant: 15).isActive = true
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


extension UpComingDetailVC: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == sizePickerView{
            return sizeArray.count
        }
            return quantityArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == sizePickerView{
            return sizeArray[row]
        }
            return quantityArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let size = sizeArray[sizePickerView.selectedRow(inComponent: 0)]
        let quantity = quantityArray[quantityPickerView.selectedRow(inComponent: 0)]
        print("Person has selected \(size) and an amount of \(quantity)")
        
        // got the values but still need to set them with the order when you hit the button
        
        
    }

    
    
    
}
