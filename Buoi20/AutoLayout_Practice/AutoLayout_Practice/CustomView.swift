//
//  CustomView.swift
//  AutoLayout_Practice
//
//  Created by Toan-tech on 12/17/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    let titleLabel = UILabel()
    let smallLabel = UILabel()
    let allButton = UIButton()
    let smallButton = UIButton()
    let mediumButton = UIButton()
    let largeButton = UIButton()
    let leftView = UIView()
    let subLeftView = UIView()
    let leftImageView = UIImageView()
    let labelLeftView = UILabel()
    let centerView = UIView()
    let subCenterView = UIView()
    let centerImageView = UIImageView()
    let labelCenterView = UILabel()
    let rightView = UIView()
    let subRightView = UIView()
    let rightImageView = UIImageView()
    let labelRightView = UILabel()
    let scrollViewUp = UIScrollView()
    let borderView = UIView()
    
    //MARK: Ý nghĩa từng dòng trong 2 dòng lệnh dưới đây là gì???
    override init(frame: CGRect) {
        super.init(frame:frame)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Paws & Wags"
        titleLabel.font = UIFont.systemFont(ofSize: 25)
        //        titleLabel.adjustsFontSizeToFitWidth = true
        smallLabel.translatesAutoresizingMaskIntoConstraints = false
        smallLabel.text = "Browse all"
        smallLabel.textColor = .gray
        smallLabel.font = UIFont.systemFont(ofSize: 12)
        smallLabel.adjustsFontSizeToFitWidth = true
        
        allButton.translatesAutoresizingMaskIntoConstraints = false
        allButton.setTitle("All", for: .normal)
        allButton.setTitleColor(.blue, for: .normal)
        smallButton.translatesAutoresizingMaskIntoConstraints = false
        smallButton.setTitle("Small", for: .normal)
        smallButton.setTitleColor(.systemPink, for: .normal)
        mediumButton.translatesAutoresizingMaskIntoConstraints = false
        mediumButton.setTitle("Medium", for: .normal)
        mediumButton.setTitleColor(.orange, for: .normal)
        largeButton.translatesAutoresizingMaskIntoConstraints = false
        largeButton.setTitle("Large", for: .normal)
        largeButton.setTitleColor(.purple, for: .normal)
        
        leftView.translatesAutoresizingMaskIntoConstraints = false
        leftView.backgroundColor = #colorLiteral(red: 0.9411126277, green: 1, blue: 0.7791710465, alpha: 1)
        leftView.layer.cornerRadius = 5
        leftView.layer.masksToBounds = true
        
        leftImageView.translatesAutoresizingMaskIntoConstraints = false
        leftImageView.image = UIImage(named: "dog1")
        
        labelLeftView.translatesAutoresizingMaskIntoConstraints = false
        labelLeftView.text = "Barkley"
        labelLeftView.font = .systemFont(ofSize: 15)
        
        subLeftView.translatesAutoresizingMaskIntoConstraints = false
        
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.backgroundColor = #colorLiteral(red: 0.9411126277, green: 1, blue: 0.7791710465, alpha: 1)
        centerView.layer.cornerRadius = 5
        centerView.layer.masksToBounds = true
        
        centerImageView.translatesAutoresizingMaskIntoConstraints = false
        centerImageView.image = UIImage(named: "dog2")
        
        labelCenterView.translatesAutoresizingMaskIntoConstraints = false
        labelCenterView.text = "Pumpkin"
        labelCenterView.font = .systemFont(ofSize: 15)
        
        subCenterView.translatesAutoresizingMaskIntoConstraints = false
        
        rightView.translatesAutoresizingMaskIntoConstraints = false
        rightView.backgroundColor = #colorLiteral(red: 0.9411126277, green: 1, blue: 0.7791710465, alpha: 1)
        rightView.layer.cornerRadius = 5
        rightView.layer.masksToBounds = true
        
        rightImageView.translatesAutoresizingMaskIntoConstraints = false
        rightImageView.image = UIImage(named: "dog3")
        
        labelRightView.translatesAutoresizingMaskIntoConstraints = false
        labelRightView.text = "Toxic"
        labelRightView.font = .systemFont(ofSize: 15)
        
        subRightView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollViewUp.translatesAutoresizingMaskIntoConstraints = false
        
        borderView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleLabel)
        self.addSubview(smallLabel)
        self.addSubview(allButton)
        self.addSubview(smallButton)
        self.addSubview(mediumButton)
        self.addSubview(largeButton)
        
        scrollViewUp.addSubview(borderView)
        borderView.addSubview(leftView)
        borderView.addSubview(centerView)
        borderView.addSubview(rightView)
        
        self.addSubview(scrollViewUp)
        leftView.addSubview(leftImageView)
        leftView.addSubview(labelLeftView)
        leftView.addSubview(subLeftView)
        centerView.addSubview(centerImageView)
        centerView.addSubview(labelCenterView)
        centerView.addSubview(subCenterView)
        rightView.addSubview(rightImageView)
        rightView.addSubview(labelRightView)
        rightView.addSubview(subRightView)
        
//        borderView.backgroundColor = .red
        scrollViewUp.showsHorizontalScrollIndicator = false
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    func setupLayout(){
        let constrainttitleLabel = [
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
        ]
        NSLayoutConstraint.activate(constrainttitleLabel)
        
        let constraintsmallLabel = [
            smallLabel.bottomAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0),
            smallLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
        ]
        NSLayoutConstraint.activate(constraintsmallLabel)
        
        let constraintallButton = [
            allButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            allButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constraintallButton)
        
        let constraintsmallButton = [
            smallButton.topAnchor.constraint(equalTo: allButton.topAnchor, constant: 0),
            smallButton.leftAnchor.constraint(equalTo: allButton.rightAnchor, constant: 16)
        ]
        NSLayoutConstraint.activate(constraintsmallButton)
        
        let constraintmediumButton = [
            mediumButton.topAnchor.constraint(equalTo: allButton.topAnchor, constant: 0),
            mediumButton.leftAnchor.constraint(equalTo: smallButton.rightAnchor, constant: 16)
        ]
        NSLayoutConstraint.activate(constraintmediumButton)
        
        let constraintlargeButton = [
            largeButton.topAnchor.constraint(equalTo: mediumButton.topAnchor, constant: 0),
            largeButton.leftAnchor.constraint(equalTo: mediumButton.rightAnchor, constant: 16)
        ]
        NSLayoutConstraint.activate(constraintlargeButton)
        
        let constraintleftView = [
            leftView.topAnchor.constraint(equalTo: borderView.topAnchor, constant: 0),
            leftView.leadingAnchor.constraint(equalTo: borderView.leadingAnchor, constant: 0),
            leftView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2, constant: -10),
            leftView.heightAnchor.constraint(equalTo: leftView.widthAnchor, multiplier: 1),
            leftView.bottomAnchor.constraint(equalTo: borderView.bottomAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constraintleftView)

        let constraintleftImageView = [
            leftImageView.topAnchor.constraint(equalTo: leftView.topAnchor, constant: 0),
            leftImageView.leadingAnchor.constraint(equalTo: leftView.leadingAnchor, constant: 0),
            leftImageView.widthAnchor.constraint(equalTo: leftView.widthAnchor, multiplier: 1),
            leftImageView.heightAnchor.constraint(equalTo: leftView.heightAnchor, multiplier: 5/6)
        ]
        NSLayoutConstraint.activate(constraintleftImageView)
        
        let constraintlabelLeftView = [
            labelLeftView.centerYAnchor.constraint(equalTo: subLeftView.centerYAnchor, constant: 0),
            labelLeftView.leadingAnchor.constraint(equalTo: leftView.leadingAnchor, constant: 10)
        ]
        NSLayoutConstraint.activate(constraintlabelLeftView)
   
        let constraintsubLeftView = [
            subLeftView.leadingAnchor.constraint(equalTo: leftView.leadingAnchor, constant: 0),
            subLeftView.topAnchor.constraint(equalTo: leftImageView.bottomAnchor, constant: 0),
            subLeftView.widthAnchor.constraint(equalTo: leftView.widthAnchor, multiplier: 1),
            subLeftView.bottomAnchor.constraint(equalTo: leftView.bottomAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constraintsubLeftView)
        
        let constraintcenterView = [
                 centerView.topAnchor.constraint(equalTo: borderView.topAnchor, constant: 0),
                 centerView.leftAnchor.constraint(equalTo: leftView.rightAnchor, constant: 20),
                 centerView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2, constant: -10),
                 centerView.heightAnchor.constraint(equalTo: centerView.widthAnchor, multiplier: 1)
             ]
             NSLayoutConstraint.activate(constraintcenterView)

             let constraintcenterImageView = [
                 centerImageView.topAnchor.constraint(equalTo: centerView.topAnchor, constant: 0),
                 centerImageView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
                 centerImageView.widthAnchor.constraint(equalTo: centerView.widthAnchor, multiplier: 1),
                 centerImageView.heightAnchor.constraint(equalTo: centerView.heightAnchor, multiplier: 5/6)
             ]
             NSLayoutConstraint.activate(constraintcenterImageView)
             
             let constraintlabelCenterView = [
                 labelCenterView.centerYAnchor.constraint(equalTo: subCenterView.centerYAnchor, constant: 0),
                 labelCenterView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 10)
             ]
             NSLayoutConstraint.activate(constraintlabelCenterView)
        
             let constraintsubCenterView = [
                 subCenterView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
                 subCenterView.topAnchor.constraint(equalTo: centerImageView.bottomAnchor, constant: 0),
                 subCenterView.widthAnchor.constraint(equalTo: centerView.widthAnchor, multiplier: 1),
                 subCenterView.bottomAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 0)
             ]
             NSLayoutConstraint.activate(constraintsubCenterView)
        
        let constraintrightView = [
                 rightView.topAnchor.constraint(equalTo: borderView.topAnchor, constant: 0),
                 rightView.leftAnchor.constraint(equalTo: centerView.rightAnchor, constant: 20),
                 rightView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2, constant: -10),
                 rightView.heightAnchor.constraint(equalTo: rightView.widthAnchor, multiplier: 1)
             ]
             NSLayoutConstraint.activate(constraintrightView)

             let constraintrightImageView = [
                 rightImageView.topAnchor.constraint(equalTo: rightView.topAnchor, constant: 0),
                 rightImageView.leadingAnchor.constraint(equalTo: rightView.leadingAnchor, constant: 0),
                 rightImageView.widthAnchor.constraint(equalTo: rightView.widthAnchor, multiplier: 1),
                 rightImageView.heightAnchor.constraint(equalTo: rightView.heightAnchor, multiplier: 5/6)
             ]
             NSLayoutConstraint.activate(constraintrightImageView)
             
             let constraintlabelRightView = [
                 labelRightView.centerYAnchor.constraint(equalTo: subRightView.centerYAnchor, constant: 0),
                 labelRightView.leadingAnchor.constraint(equalTo: rightView.leadingAnchor, constant: 10)
             ]
             NSLayoutConstraint.activate(constraintlabelRightView)
        
             let constraintsubRightView = [
                 subRightView.leadingAnchor.constraint(equalTo: rightView.leadingAnchor, constant: 0),
                 subRightView.topAnchor.constraint(equalTo: rightImageView.bottomAnchor, constant: 0),
                 subRightView.widthAnchor.constraint(equalTo: rightView.widthAnchor, multiplier: 1),
                 subRightView.bottomAnchor.constraint(equalTo: rightView.bottomAnchor, constant: 0)
             ]
             NSLayoutConstraint.activate(constraintsubRightView)
        //MARK: khi đặt layout của scrollView, những layout của nó với các thành phần không phải là con của nó sẽ xác định vị trí hiển thị của scrollView trên màn hình. Những layout của scrollView với các thành phần là con của nó trở xuống sẽ xác định những gì được hiển thị trong scrollView. Ví dụ ở dưới đây allButton không phải là con nó nên những cài đặt này sẽ xác định vị trí hoạt động của scrollView. Còn border là con của nó nên sẽ xác định những gì của border được hiển thị trong scrollView.
        let constraintscrollViewUp = [
            scrollViewUp.topAnchor.constraint(equalTo: allButton.bottomAnchor, constant: 10),
            scrollViewUp.leadingAnchor.constraint(equalTo: allButton.leadingAnchor, constant: 0),
            scrollViewUp.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            scrollViewUp.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2, constant: -10)
        ]
        NSLayoutConstraint.activate(constraintscrollViewUp)
        
        let constraintborderView = [
            borderView.topAnchor.constraint(equalTo: scrollViewUp.topAnchor, constant: 0),
            borderView.leadingAnchor.constraint(equalTo: scrollViewUp.leadingAnchor, constant: 0),
            //MARK: khi view con của scrollView có chiều dài hay rộng vượt quá màn hình hiển thị thì phải đặt layout của rightAnchor hoặc bottomAnchor của nó so với scrollView. Nếu ko làm thế thì scrollView sẽ ko hiểu phải hiển thị view con đến chỗ nào.
            borderView.rightAnchor.constraint(equalTo: scrollViewUp.rightAnchor, constant: 0),
//            borderView.bottomAnchor.constraint(equalTo: scrollViewUp.bottomAnchor, constant: 0),
//            borderView.bottomAnchor.constraint(equalTo: leftView.bottomAnchor, constant: 0),
            borderView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 3/2, constant: 10),
//            borderView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constraintborderView)
    }
}
