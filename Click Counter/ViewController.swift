//
//  ViewController.swift
//  Click Counter
//
//  Created by Anna Mandy on 10/25/18.
//  Copyright © 2018 Anna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel?
    @IBOutlet var decLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func incrementCount() {
        self.count += 1
        self.label?.text = "\(self.count)"
        self.decLabel?.text = "\(self.count)"
    }
    
    @IBAction func decrementCount() {
        self.count -= 1
        self.label?.text = "\(self.count)"
        self.decLabel?.text = "\(self.count)"
    }
    
    @IBAction func toggleBgColor() {
        if self.view.backgroundColor == UIColor.purple {
            self.view.backgroundColor = UIColor.white
        } else {
            self.view.backgroundColor = UIColor.purple
        }
    }
}

