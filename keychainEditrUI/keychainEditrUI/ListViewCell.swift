//
//  ListViewCell.swift
//  keychainEditrUI
//
//  Created by Srikant Viswanath on 2/16/16.
//  Copyright © 2016 Ghutle. All rights reserved.
//

import UIKit

class ListViewCell: UITableViewCell {

    @IBOutlet weak var accountName: UILabel!
    @IBOutlet weak var serviceName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureListCell(listContentsDict: Dictionary<String, AnyObject>){
        if let accName = listContentsDict[kSecAttrAccount as String], svcName = listContentsDict[kSecAttrService as String]{
            accountName.text = accName as! String
            serviceName.text = svcName as! String
        }else{
            print("Either kSecAttrAccount or kSecAttrService keys not present while configuring list view cell")
        }
        
    }

   

}
