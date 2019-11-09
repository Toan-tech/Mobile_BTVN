//
//  ViewController.swift
//  GiaoDienHinhCung
//
//  Created by Toan-tech on 11/9/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var counterView: CounterView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onPlus(_ sender: Any) {
    
    if counterView.counter < 8 {
        counterView.counter += 1
    } else {
        return
        }
    }
    
    @IBAction func onMinus(_ sender: Any) {
    if counterView.counter > 0 {
        counterView.counter -= 1
    } else {
        return
    }
}
}
