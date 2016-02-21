//
//  ViewController.swift
//  keychainEditrUI
//
//  Created by Nitin Jami on 2/16/16.
//  Copyright © 2016 Ghutle. All rights reserved.
//

import UIKit

class FilterToDumpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDump(sender: AnyObject) {
        performSegueWithIdentifier("dumpToList", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "dumpToList"){
            let keyChain = Keychain()
            let masterData = keyChain.fetchItemsAll()
            let listVC = segue.destinationViewController as! ListViewVC
            listVC.keyChainMasterData = masterData.items
        }
    }

}

