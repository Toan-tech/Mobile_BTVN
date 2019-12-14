//
//  SignupViewController.swift
//  Present_Navigation
//
//  Created by Toan-tech on 12/12/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onNext(_ sender: Any) {
        let mainstoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let signinVC = mainstoryBoard.instantiateViewController(identifier: "SigninViewController") as! SigninViewController
        present(signinVC, animated: true, completion: nil)
    }
    
    

}
