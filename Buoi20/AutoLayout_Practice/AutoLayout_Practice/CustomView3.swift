//
//  CustomView3.swift
//  AutoLayout_Practice
//
//  Created by Toan-tech on 12/21/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class CustomView3: UIView {
    
    let backButton = UIButton()
    let scrollView = UIScrollView()
    let labelView = UILabel()
    let titleView = UILabel()
    let tagButton1 = UIButton()
    let tagButton2 = UIButton()
    let tagButton3 = UIButton()
    let tagButton4 = UIButton()
    //let testView = UIView()
    let imageView = UIImageView()
    let profileView = UIView()
    let nameLabel = UILabel()
    let timeLabel = UILabel()
    let followButton = UIButton()
    let contentView = UILabel()
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backButton.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        backButton.setImage(UIImage(named:"backarrow"), for: .normal)
        
//        testView.frame = CGRect(x: 0,
//        y: 0,
//        width: (UIScreen.main.bounds.width/8)*6,
//        height: UIScreen.main.bounds.height*2)
        
//        scrollView.frame = CGRect(x: 0,
//                                  y: 30,
//                                  width: (UIScreen.main.bounds.width/8)*6,
//                                  height: UIScreen.main.bounds.height)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator  = false
        
//        scrollView.contentSize = CGSize(width: (UIScreen.main.bounds.width/8)*6, height: 1000)
        labelView.frame = CGRect(x: 0, y: 30, width: 200, height: 10)
        labelView.text = "BONDING WITH YOUR DOGS"
        labelView.textColor = .red
        labelView.textAlignment = .left
        labelView.font = .systemFont(ofSize: 8)
        
        titleView.frame = CGRect(x: 0, y: 50, width: (UIScreen.main.bounds.width/8)*6, height: 50)
        titleView.text = "What 'walkies' says about relationship with your dog?"
        titleView.font = .systemFont(ofSize: 18)
        titleView.numberOfLines = 0
        
        tagButton1.translatesAutoresizingMaskIntoConstraints = false
        tagButton1.setTitle("dog", for: .normal)
        tagButton1.setTitleColor(.darkGray, for: .normal)
        tagButton1.backgroundColor = .lightGray
        tagButton1.titleLabel?.font = .systemFont(ofSize: 10)
        tagButton1.layer.cornerRadius = 10
        
        tagButton2.translatesAutoresizingMaskIntoConstraints = false
        tagButton2.setTitle("behavior", for: .normal)
        tagButton2.setTitleColor(.darkGray, for: .normal)
        tagButton2.backgroundColor = .lightGray
        tagButton2.titleLabel?.font = .systemFont(ofSize: 10)
        tagButton2.layer.cornerRadius = 10
        
        tagButton3.translatesAutoresizingMaskIntoConstraints = false
        tagButton3.setTitle("bonding", for: .normal)
        tagButton3.setTitleColor(.darkGray, for: .normal)
        tagButton3.backgroundColor = .lightGray
        tagButton3.titleLabel?.font = .systemFont(ofSize: 10)
        tagButton3.layer.cornerRadius = 10
        
        tagButton4.translatesAutoresizingMaskIntoConstraints = false
        tagButton4.setTitle("leash", for: .normal)
        tagButton4.setTitleColor(.darkGray, for: .normal)
        tagButton4.backgroundColor = .lightGray
        tagButton4.titleLabel?.font = .systemFont(ofSize: 10)
        tagButton4.layer.cornerRadius = 10
        
        imageView.frame = CGRect(x: 0, y: 150, width: (UIScreen.main.bounds.width/8)*6, height: (UIScreen.main.bounds.width/8)*6)
        imageView.image = UIImage(named:"dog8")
        
        profileView.frame = CGRect(x: 0, y: 166+(UIScreen.main.bounds.width/8)*6, width: 30, height: 30)
        profileView.layer.cornerRadius = 15
        profileView.layer.masksToBounds = true
        profileView.backgroundColor = .lightGray
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Emma Johnson"
        nameLabel.textColor = .red
        nameLabel.font = .systemFont(ofSize: 14)
        nameLabel.textAlignment = .left
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.text = "Now 26,2018 - 3min read"
        timeLabel.textColor = .lightGray
        timeLabel.font = .systemFont(ofSize: 10)
        timeLabel.textAlignment = .left
        
        followButton.translatesAutoresizingMaskIntoConstraints = false
        followButton.setTitle("Follow", for: .normal)
        followButton.backgroundColor = .red
        followButton.titleLabel?.font = .systemFont(ofSize: 14)
        followButton.titleLabel?.textColor = .white
        followButton.layer.cornerRadius = 2
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.text = "Shin Tae-yong là một trong những HLV nổi tiếng ở xứ sở kim chi. Ông là HLV trưởng của tuyển Hàn Quốc ở World Cup 2018. Bị loại từ vòng bảng, song Son Heung-min cùng các đồng đội vẫn để lại dấu ấn với chiến thắng 3-0 trước tuyển Đức. Là một người anh em và cũng là người đi trước, tôi tin rằng Shin Tae-yong sẽ có quyết định sáng suốt. Vấn đề tài chính cũng là một khía cạnh quan trọng với HLV. Quan trọng hơn, thật tốt nếu ông ấy có thể làm được một điều gì đó ở điểm đến tiếp theo, HLV Park Hang-seo chia sẻ. Lúc này, U23 Việt Nam đang trong chuyến tập huấn ngắn ngày tại Hàn Quốc để chuẩn bị cho VCK U23 châu Á 2020 diễn ra trên đất Thái Lan đầu năm sau. Chiều 21/12, đoàn quân của HLV Park Hang-seo sẽ có trận giao hữu với Busan Transportation Cooperation trước khi trở về Việt Nam. Shin Tae-yong là một trong những HLV nổi tiếng ở xứ sở kim chi. Ông là HLV trưởng của tuyển Hàn Quốc ở World Cup 2018. Bị loại từ vòng bảng, song Son Heung-min cùng các đồng đội vẫn để lại dấu ấn với chiến thắng 3-0 trước tuyển Đức. Là một người anh em và cũng là người đi trước, tôi tin rằng Shin Tae-yong sẽ có quyết định sáng suốt. Vấn đề tài chính cũng là một khía cạnh quan trọng với HLV. Quan trọng hơn, thật tốt nếu ông ấy có thể làm được một điều gì đó ở điểm đến tiếp theo, HLV Park Hang-seo chia sẻ. Lúc này, U23 Việt Nam đang trong chuyến tập huấn ngắn ngày tại Hàn Quốc để chuẩn bị cho VCK U23 châu Á 2020 diễn ra trên đất Thái Lan đầu năm sau. Chiều 21/12, đoàn quân của HLV Park Hang-seo sẽ có trận giao hữu với Busan Transportation Cooperation trước khi trở về Việt Nam."
        contentView.font = .systemFont(ofSize: 12)
        contentView.numberOfLines = 0

        self.addSubview(backButton)
        self.addSubview(scrollView)
        scrollView.addSubview(labelView)
        scrollView.addSubview(titleView)
        scrollView.addSubview(tagButton1)
        scrollView.addSubview(tagButton2)
        scrollView.addSubview(tagButton3)
        scrollView.addSubview(tagButton4)
//        scrollView.addSubview(testView)
        scrollView.addSubview(imageView)
        scrollView.addSubview(profileView)
        scrollView.addSubview(nameLabel)
        scrollView.addSubview(timeLabel)
        scrollView.addSubview(followButton)
        scrollView.addSubview(contentView)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupLayout(){
        let constrainttagButton1 = [
            tagButton1.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 16),
            tagButton1.leftAnchor.constraint(equalTo: titleView.leftAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constrainttagButton1)
        
        let constrainttagButton2 = [
            tagButton2.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 16),
            tagButton2.leftAnchor.constraint(equalTo: tagButton1.rightAnchor, constant: 8)
        ]
        NSLayoutConstraint.activate(constrainttagButton2)
        
        let constrainttagButton3 = [
            tagButton3.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 16),
            tagButton3.leftAnchor.constraint(equalTo: tagButton2.rightAnchor, constant: 8)
        ]
        NSLayoutConstraint.activate(constrainttagButton3)
        
        let constrainttagButton4 = [
            tagButton4.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 16),
            tagButton4.leftAnchor.constraint(equalTo: tagButton3.rightAnchor, constant: 8)
        ]
        NSLayoutConstraint.activate(constrainttagButton4)
        
        let constraintnameLabel = [
            nameLabel.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 0),
            nameLabel.leftAnchor.constraint(equalTo: profileView.rightAnchor, constant: 16)
        ]
        NSLayoutConstraint.activate(constraintnameLabel)
        
        let constrainttimeLabel = [
            timeLabel.leftAnchor.constraint(equalTo: nameLabel.leftAnchor, constant: 0),
            timeLabel.firstBaselineAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constrainttimeLabel)
        
        let constraintfollowButton = [
            followButton.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: 0),
            followButton.bottomAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 0),
            followButton.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 0),
            followButton.widthAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1/5)
        ]
        NSLayoutConstraint.activate(constraintfollowButton)
        
        let constraintcontentView = [
            contentView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 32),
            contentView.leftAnchor.constraint(equalTo: profileView.leftAnchor, constant: 0),
            contentView.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -64)
        ]
        NSLayoutConstraint.activate(constraintcontentView)
        
        let constraintscrollView = [
            scrollView.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            scrollView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constraintscrollView)
        
    }
}
