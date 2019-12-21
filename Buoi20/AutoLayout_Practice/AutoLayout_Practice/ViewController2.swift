//
//  ViewController2.swift
//  AutoLayout_Practice
//
//  Created by Toan-tech on 12/21/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    let customView3 = CustomView3()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView3.frame = CGRect(x: view.bounds.width/8,
                                   y: view.bounds.height/15,
                                   width: (view.bounds.width/8)*6,
                                   height: view.bounds.height)
        view.backgroundColor = .white
        view.addSubview(customView3)
        self.customView3.backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    
    @objc func goBack (){
        self.dismiss(animated: true, completion: nil)
    }
}
