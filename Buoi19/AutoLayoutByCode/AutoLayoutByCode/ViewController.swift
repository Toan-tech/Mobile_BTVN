//
//  ViewController.swift
//  AutoLayoutByCode
//
//  Created by Toan-tech on 12/17/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var customView: CustomView!
    let imageView: UIImageView = {
    let myView = UIImageView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.image = UIImage(named: "girl1")
        return myView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView = CustomView(center: CGPoint(x: view.bounds.midX, y: 0), radius: view.bounds.midY+80, fillColor: UIColor.red)
        view.addSubview(customView)
//        view.addSubview(imageView)
        customView.addSubview(imageView)
//        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        customView.bringSubviewToFront(imageView)
        setupLayout()
    }
    func setupLayout(){
        let constraintimageView = [
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            imageView.heightAnchor.constraint(equalTo: customView.heightAnchor, multiplier: 3/10)
        ]
        NSLayoutConstraint.activate(constraintimageView)
    }

}

