//
//  ListViewVC.swift
//  keychainEditrUI
//
//  Created by Srikant Viswanath on 2/16/16.
//  Copyright © 2016 Ghutle. All rights reserved.
//

import UIKit

class ListViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var listOfDumpData = [["accName":"Yoda", "svcName":"Count duku"], ["accName":"Count Duku", "svcName":"Seorin"], ["accName":"Seorin", "svcName":"Obi Wan Kanonbe"], ["accName":"Obi Wan Kanobe", "svcName":"Luke Skywalker"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCellId") as? ListViewCell{
            cell.configureListCell(listOfDumpData[indexPath.row])
            return cell
        }else{
            return ListViewCell()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfDumpData.count
    }
    

}
