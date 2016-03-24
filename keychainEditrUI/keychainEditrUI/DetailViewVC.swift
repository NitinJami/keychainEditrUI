//
//  DetailViewVC.swift
//  keychainEditrUI
//
//  Created by Srikant Viswanath on 2/17/16.
//  Copyright © 2016 Ghutle. All rights reserved.
//

import UIKit
let ORDER_OF_KEYS = [
    "Account", "Service", "Access Group", "Protection", "Creation Time", "Modification Time", "Data", "User Preference"
]

class DetailViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var dataSentFromListView: [Dictionary<String, String>]!
    @IBOutlet weak var detailTableView: UITableView!
    
    @IBAction func deleteThisItem(sender: AnyObject){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailTableView.delegate = self
        detailTableView.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("detailView's cellForRowAtIndexPath called!!")
        if let detailCell = detailTableView.dequeueReusableCellWithIdentifier("DetailViewCell") as? DetailViewCell{
            detailCell.configureCell(dataSentFromListView[indexPath.row])
            return detailCell
        }else{
            return DetailViewCell()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSentFromListView.count
    }
    


}
