//
//  DynamicTableViewByCode.swift
//  DynamicTableView
//
//  Created by Toan-tech on 12/25/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class DynamicTableViewByCode: UIViewController {
let customView = CustomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customView.translatesAutoresizingMaskIntoConstraints = false
        navigationController?.navigationBar.barTintColor = .yellow
        view.addSubview(customView)
        view.backgroundColor = .green
        setupLayout()
        title = "Dynamic Table"
    }
    
    func setupLayout(){
        customView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        customView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        customView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        customView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
    }

    

}
