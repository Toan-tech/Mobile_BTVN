//
//  CustomView.swift
//  ScrollView_FullOption
//
//  Created by Toan-tech on 12/14/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class CustomView: UIView {

  var imageView = UIImageView()
    var nameLabel = UILabel()

override init(frame: CGRect) {
    super.init(frame: frame)
    let x = self.bounds.width/5
    let y = self.bounds.height/6
    imageView.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
    nameLabel.frame = CGRect(x: x, y: y*4, width: x*4, height: y)
    
    self.addSubview(imageView)
    nameLabel.textAlignment = .center
    nameLabel.font = .boldSystemFont(ofSize: 40)
    nameLabel.textColor = .black
    self.layer.borderWidth = 3
    self.layer.borderColor = UIColor.black.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
