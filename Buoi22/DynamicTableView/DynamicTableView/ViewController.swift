//
//  ViewController.swift
//  DynamicTableView
//
//  Created by Toan-tech on 12/25/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var tableView = UITableView()
    var object: [Object]?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        view.backgroundColor = .white
        configTable()
        setupData()
        setupLayout()
    }
     func setupLayout(){
        tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        tableView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 0).isActive = true
        tableView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
        }
        func configTable(){
            // gán delegate và datasource cho tableView (hình dạng và dữ liệu)
            tableView.delegate = self
            tableView.dataSource = self
        }
        func setupData(){
            object = [
                Object(type: "Dog", live: "Living", imageName: "dog1"),
                Object(type: "Girl", live: "Living", imageName: "girl1"),
                Object(type: "Flag", live: "Not living", imageName: "vietnamflag"),
                Object(type: "Dog", live: "Living", imageName: "dog1"),
                Object(type: "Girl", live: "Living", imageName: "girl1"),
                Object(type: "Flag", live: "Not living", imageName: "vietnamflag")
            ]
        }
    }
    extension ViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
    }
    extension ViewController: UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return object!.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell: UITableViewCell?
            cell = tableView.dequeueReusableCell(withIdentifier: "id")
            if cell == nil {
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: "id")
            }
            cell?.textLabel?.text = object![indexPath.row].type
            cell?.detailTextLabel?.text = object![indexPath.row].live
            cell?.imageView?.image = UIImage(named: object![indexPath.row].imageName)
            return cell!
        }
    }

