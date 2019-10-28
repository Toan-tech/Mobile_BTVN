//
//  ViewController.swift
//  ElectricPayment
//
//  Created by Toan-tech on 10/27/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var kWhTextField: UITextField!
    
    @IBOutlet weak var moneyLabel: UILabel!
    
    @IBOutlet weak var onChangeButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        moneyLabel.layer.cornerRadius = 20
        moneyLabel.layer.masksToBounds = true
        onChangeButton.layer.cornerRadius = 20
    }

    @IBAction func onPress(_ sender: Any) {
        var a: Float = 0
        guard let b = Float(kWhTextField.text!) else {
            return
        }
        if b < 0 {
            return
        }
        if b <= 50 {
            a = b*1.678
        } else if b <= 100 {
            a = 50*1.678 + (b-50)*1.734
        } else if b <= 200 {
            a = 50*1.678 + 50*1.734 + (b-100)*2.014
        } else if b <= 300 {
            a = (1.678 + 1.734)*50 + 100*2.014 + (b-200)*2.536
        } else if b <= 400 {
            a = (1.678 + 1.734)*50 + (2.014 + 2.536)*100 + (b-300)*2.834
        } else {
            a = (1.678 + 1.734)*50 + (2.014 + 2.536 + 2.834)*100 + (b-400)*2.927
        }
         moneyLabel.text = String(a)
    
}

}
