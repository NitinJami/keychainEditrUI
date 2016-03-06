//
//  DetailViewVC.swift
//  keychainEditrUI
//
//  Created by Srikant Viswanath on 2/17/16.
//  Copyright © 2016 Ghutle. All rights reserved.
//

import UIKit

class DetailViewVC: UIViewController {

    @IBOutlet weak var detailsTxtView: UITextView?
    
    var dataSentFromListView: Dictionary<String, String>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        for (key, value) in dataSentFromListView{
            detailsTxtView!.text! += "\(key): \(value) \n \n"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
