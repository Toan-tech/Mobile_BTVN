//
//  ProfileViewController.swift
//  Present_Navigation
//
//  Created by Toan-tech on 12/14/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cancel = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(cancel1))
        
        let next = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(lastView))
        navigationItem.rightBarButtonItems = [cancel, next]
    }
    
    
    @objc func cancel1(){
    navigationController?.popToRootViewController(animated: true)
    }
   
    @objc func lastView(){
        let last = BackToStartViewController()
        navigationController?.pushViewController(last, animated: true)
    }
}
