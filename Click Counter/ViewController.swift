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
    var label: UILabel?
    var decLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // increment label setup
        let label = UILabel()
        label.frame = CGRect(x: 125, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // increment button setup
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 250, width: 150, height: 60)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        // decrement label setup
        let decLabel = UILabel()
        decLabel.frame = CGRect(x: 275, y: 150, width: 60, height: 60)
        decLabel.text = "0"
        view.addSubview(decLabel)
        self.decLabel = decLabel
        
        // decrement button setup
        let decButton = UIButton()
        decButton.frame = CGRect(x: 200, y: 250, width: 150, height: 60)
        decButton.setTitle("Decrement", for: .normal)
        decButton.setTitleColor(UIColor.orange, for: .normal)
        view.addSubview(decButton)
        
        // view background color toggle button
        let bgColorToggle = UIButton()
        bgColorToggle.frame = CGRect(x: 200, y: 400, width: 150, height: 60)
        bgColorToggle.setTitleColor(UIColor.cyan, for: .normal)
        bgColorToggle.setTitle("Toggle Color", for: .normal)
        view.addSubview(bgColorToggle)
        
        // callback methods
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        bgColorToggle.addTarget(self, action: #selector(ViewController.toggleBgColor), for: UIControl.Event.touchUpInside)
    }

    @objc func incrementCount() {
        self.count += 1
        self.label?.text = "\(self.count)"
        self.decLabel?.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label?.text = "\(self.count)"
        self.decLabel?.text = "\(self.count)"
    }
    
    @objc func toggleBgColor() {
        if self.view.backgroundColor == UIColor.yellow {
            self.view.backgroundColor = UIColor.gray
        } else {
            self.view.backgroundColor = UIColor.yellow
        }
    }
}

