//
//  CustomCell.swift
//  CustomCellTableView
//
//  Created by Toan-tech on 12/31/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    //những đối tượng nào có giao diện thì muốn thay đổi thuộc tính của nó thì phải gọi nó trong hàm awakeFromNib, ví dụ thay đổi màu nền của view từ brown sang cyan dưới đây
    
    @IBOutlet weak var customImage: UIImageView!
    
  
    @IBOutlet weak var customImage2: UIImageView!
    var verified = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.backgroundColor = UIColor.cyan
        customImage.backgroundColor = UIColor.yellow
        customImage.layer.cornerRadius = 10
        
    }
//những đối tượng không có giao diện muốn thực hiện hành động với nó phải gọi trong hàm setSelected, ví dụ hàm setupLayout()
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        customImage2.isUserInteractionEnabled = true
        customImage2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapicon)))
        
        customImage2.image = (verified ? UIImage(named: "circle_verified") : UIImage(named: "circle"))
    }
    @objc func tapicon (){
        print("tapicon")
        verified.toggle()
        customImage2.image = (verified ? UIImage(named: "circle_verified") : UIImage(named: "circle"))
    }
    
}
