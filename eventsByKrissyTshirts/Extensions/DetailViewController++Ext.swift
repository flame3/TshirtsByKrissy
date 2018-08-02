//
//  DetailViewController++Ext.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 2/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

extension DetailViewController: UIPickerViewDelegate, UIPickerViewDataSource {
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
        //completePayment(size: size, quantity: quantity)
        
        // got the values but still need to set them with the order when you hit the button
        
        
        
    }
    
    
    
    
}
