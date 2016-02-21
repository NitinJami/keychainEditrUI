//
//  DetailViewVC.swift
//  keychainEditrUI
//
//  Created by Srikant Viswanath on 2/17/16.
//  Copyright © 2016 Ghutle. All rights reserved.
//

import UIKit

class DetailViewVC: UIViewController {

    @IBOutlet weak var entitlementGrp: UILabel!
    @IBOutlet weak var account: UILabel!
    @IBOutlet weak var service: UILabel!
    @IBOutlet weak var protectionLvl: UILabel!
    @IBOutlet weak var keyChainedData: UILabel!
    
    var dataSentFromListView: Dictionary<String, AnyObject>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        if let acc = dataSentFromListView[kSecAttrAccount as String]{
            self.account.text = acc as! String
        }else{
            print("Nil value passed on!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
