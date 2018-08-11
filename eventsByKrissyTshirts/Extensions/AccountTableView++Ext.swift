//
//  AccountViewController++Ext.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 2/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit


extension AccountVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
       
        return sectionsHeader[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsHeader.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! AccountTableCell
        cell.cellLabel.text = sectionData[indexPath.section]?[indexPath.row]
        return cell
    }
    
    
    
    
    
}
