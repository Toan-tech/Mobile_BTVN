//
//  CustomView.swift
//  DynamicTableView
//
//  Created by Toan-tech on 12/25/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class CustomView: UIView {
    var tableView = UITableView()
    var object: [Object]?
    override init(frame: CGRect) {
        super .init(frame: frame)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableView)
        self.backgroundColor = .white
        configTable()
        setupData()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupLayout(){
        tableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
    }
    func configTable(){
        // gán delegate và datasource cho tableView (hình dạng và dữ liệu)
        tableView.delegate = self
        tableView.dataSource = self
    }
    func setupData(){
        object = [
            Object(type: "Dog", live: "Yes", imageName: "dog1"),
            Object(type: "Girl", live: "Yes", imageName: "girl1"),
            Object(type: "Flag", live: "No", imageName: "vietnamflag"),
            Object(type: "Dog", live: "Yes", imageName: "dog1"),
            Object(type: "Girl", live: "Yes", imageName: "girl1"),
            Object(type: "Flag", live: "No", imageName: "vietnamflag")
        ]
    }
}
extension CustomView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
extension CustomView: UITableViewDataSource{
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

