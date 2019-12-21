//
//  ViewController.swift
//  AutoLayout_Practice
//
//  Created by Toan-tech on 12/17/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var customView = CustomView()
    var customView2 = CustomView2()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.frame = CGRect(x: view.bounds.width/8,
                                  y: view.bounds.height/15,
                                  width: (view.bounds.width/8)*6,
                                  height: view.bounds.height/3)
       
        customView2.frame = CGRect(x: view.bounds.width/8,
                                   y: view.bounds.height/15+view.bounds.height/3,
                                   width: (view.bounds.width/8)*6,
                                   height: (view.bounds.height/3)*2)
        
        view.addSubview(customView)
        view.addSubview(customView2)
        self.customView2.bottomButton.addTarget(self, action: #selector(goTo), for: .touchUpInside)
//        customView.backgroundColor = .green
//        customView2.backgroundColor = .blue
//        print(customView.frame, view.frame, view.bounds.width/8)
//        print(customView.subLeftView.bounds.origin.x)
    }
    @objc func goTo(){
        let nextVC = ViewController2()
        nextVC.modalPresentationStyle = .fullScreen // đặt fullscreen khi present
        present(nextVC, animated: true, completion: nil)
    }


}

