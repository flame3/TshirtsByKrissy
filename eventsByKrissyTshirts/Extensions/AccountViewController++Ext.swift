//
//  AccountViewController++Ext.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 2/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit


extension AccountViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        return cell
    }
    
    
    
    
    
}
