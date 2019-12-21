//
//  CustomView2.swift
//  AutoLayout_Practice
//
//  Created by Toan-tech on 12/20/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class CustomView2: UIView, UIScrollViewDelegate {

    let titleLabel = UILabel()
    let smallLabel = UILabel()
    let scrollView = UIScrollView()
    let borderView = UIView()
    let imageView1 = UIImageView()
    let labelView1 = UILabel()
    let imageView2 = UIImageView()
    let labelView2 = UILabel()
    let imageView3 = UIImageView()
    let labelView3 = UILabel()
    let circleView1 = UIView()
    let circleView2 = UIView()
    let circleView3 = UIView()
    let labelName1 = UILabel()
    let labelName2 = UILabel()
    let labelName3 = UILabel()
    let subLabelName1 = UILabel()
    let subLabelName2 = UILabel()
    let subLabelName3 = UILabel()
    var pageControl = UIPageControl()
    let bottomButton = UIButton()
    let doggraphic = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.pageIndicatorTintColor = .cyan
        pageControl.currentPageIndicatorTintColor = .blue
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Stories"
        titleLabel.font = .systemFont(ofSize: 25)
        
        smallLabel.translatesAutoresizingMaskIntoConstraints = false
        smallLabel.text = "Read more"
        smallLabel.font = .systemFont(ofSize: 12)
        smallLabel.textColor = .gray
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.bounces = false
        scrollView.delegate = self
        scrollView.showsHorizontalScrollIndicator = false
        
        borderView.translatesAutoresizingMaskIntoConstraints = false
//        borderView.backgroundColor = .yellow
        borderView.backgroundColor = #colorLiteral(red: 0.9411126277, green: 1, blue: 0.7791710465, alpha: 1)
        
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView1.image = UIImage(named: "dog4")
        
        labelView1.translatesAutoresizingMaskIntoConstraints = false
        labelView1.text = "What 'walkies' says about relationship with your dog?"
        labelView1.font = .boldSystemFont(ofSize: 15)
        labelView1.numberOfLines = 0
        
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        imageView2.image = UIImage(named: "dog5")
        
        labelView2.translatesAutoresizingMaskIntoConstraints = false
        labelView2.font = .boldSystemFont(ofSize: 15)
        labelView2.text = "Have a bad day? Watch this!!!"
        labelView2.numberOfLines = 0
        
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        imageView3.image = UIImage(named: "dog6")
        
        labelView3.translatesAutoresizingMaskIntoConstraints = false
        labelView3.font = .boldSystemFont(ofSize: 15)
        labelView3.text = "Lisa meets new friend. This will make your day"
        labelView3.numberOfLines = 0
        
        circleView1.translatesAutoresizingMaskIntoConstraints = false
        circleView1.layer.cornerRadius = 15
        circleView1.backgroundColor = .darkGray
        circleView1.layer.masksToBounds = true
        
        circleView2.translatesAutoresizingMaskIntoConstraints = false
        circleView2.layer.cornerRadius = 15
        circleView2.backgroundColor = .darkGray
        circleView2.layer.masksToBounds = true
        
        circleView3.translatesAutoresizingMaskIntoConstraints = false
        circleView3.layer.cornerRadius = 15
        circleView3.backgroundColor = .darkGray
        circleView3.layer.masksToBounds = true
        
        labelName1.translatesAutoresizingMaskIntoConstraints = false
        labelName1.text = "Emma Johnson"
        labelName1.font = .systemFont(ofSize: 12)
        labelName1.textColor = .systemPink
        
        labelName2.translatesAutoresizingMaskIntoConstraints = false
        labelName2.text = "John Watson"
        labelName2.font = .systemFont(ofSize: 12)
        labelName2.textColor = .systemPink
        
        labelName3.translatesAutoresizingMaskIntoConstraints = false
        labelName3.text = "Benedict Cumberback"
        labelName3.font = .systemFont(ofSize: 12)
        labelName3.textColor = .systemPink
        
        subLabelName1.translatesAutoresizingMaskIntoConstraints = false
        subLabelName1.text = "Nov, 26, 2018 - 3min read"
        subLabelName1.font = .systemFont(ofSize: 10)
        subLabelName1.textColor = .lightGray
        
        subLabelName2.translatesAutoresizingMaskIntoConstraints = false
        subLabelName2.text = "Oct, 26, 2019 - 4min read"
        subLabelName2.font = .systemFont(ofSize: 10)
        subLabelName2.textColor = .lightGray
        
        subLabelName3.translatesAutoresizingMaskIntoConstraints = false
        subLabelName3.text = "Dec, 1, 2018 - 10min read"
        subLabelName3.font = .systemFont(ofSize: 10)
        subLabelName3.textColor = .lightGray
        
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomButton.backgroundColor = .orange
        bottomButton.setTitle("    Save a life. Donate a shelter pet!", for: .normal)
        bottomButton.titleLabel?.font = .systemFont(ofSize: 15)
        bottomButton.layer.cornerRadius = 5
        bottomButton.layer.masksToBounds = true
        bottomButton.contentHorizontalAlignment = .left
        
        doggraphic.translatesAutoresizingMaskIntoConstraints = false
        doggraphic.image = UIImage(named: "dog7")
        
        
        
        self.addSubview(titleLabel)
        self.addSubview(smallLabel)
        self.addSubview(scrollView)
        self.addSubview(pageControl)
        scrollView.addSubview(borderView)
        borderView.addSubview(imageView1)
        borderView.addSubview(labelView1)
        borderView.addSubview(imageView2)
        borderView.addSubview(labelView2)
        borderView.addSubview(imageView3)
        borderView.addSubview(labelView3)
        borderView.addSubview(circleView1)
        borderView.addSubview(circleView2)
        borderView.addSubview(circleView3)
        borderView.addSubview(labelName1)
        borderView.addSubview(labelName2)
        borderView.addSubview(labelName3)
        borderView.addSubview(subLabelName1)
        borderView.addSubview(subLabelName2)
        borderView.addSubview(subLabelName3)
        self.addSubview(bottomButton)
        self.addSubview(doggraphic)
        self.bringSubviewToFront(pageControl)
        
        setupLayout()
        //MARK: không dùng được present ở @objc func goTo ở class này (UIView) mà phải chuyển nó qua UIViewController ở ViewController
//        bottomButton.addTarget(self, action: #selector(goTo), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    @objc func goTo(){
//        let nextVC = ViewController2()
//        present(nextVC, animated: true, completion: nil)
//    }
    
  func setupLayout(){
    let constrainttitleLabel = [
    titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
    titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0)
    ]
    NSLayoutConstraint.activate(constrainttitleLabel)
    
    let constraintsmallLabel = [
        smallLabel.bottomAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0),
        smallLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0)
    ]
    NSLayoutConstraint.activate(constraintsmallLabel)
    
    let constraintscrollView = [
        scrollView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
        scrollView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
        scrollView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 3/5)
    ]
    NSLayoutConstraint.activate(constraintscrollView)
    
    let constraintborderView = [
        borderView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
        borderView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
        borderView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: 0),
        borderView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
        borderView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 3),
        borderView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 3/5)
    ]
    NSLayoutConstraint.activate(constraintborderView)
    
    let constraintimageView1 = [
        imageView1.topAnchor.constraint(equalTo: borderView.topAnchor, constant: 0),
        imageView1.leadingAnchor.constraint(equalTo: borderView.leadingAnchor, constant: 0),
        imageView1.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1),
        imageView1.heightAnchor.constraint(equalTo: borderView.heightAnchor, multiplier: 3/5)
    ]
    NSLayoutConstraint.activate(constraintimageView1)
    
    let constraintlabelView1 = [
        labelView1.topAnchor.constraint(equalTo: imageView1.bottomAnchor, constant: 8),
        labelView1.leadingAnchor.constraint(equalTo: imageView1.leadingAnchor, constant: 16),
        labelView1.rightAnchor.constraint(equalTo: imageView1.rightAnchor, constant: -16)
    ]
    NSLayoutConstraint.activate(constraintlabelView1)
    
    let constraintimageView2 = [
        imageView2.topAnchor.constraint(equalTo: borderView.topAnchor, constant: 0),
        imageView2.leftAnchor.constraint(equalTo: imageView1.rightAnchor, constant: 0),
        imageView2.widthAnchor.constraint(equalTo: imageView1.widthAnchor, multiplier: 1),
        imageView2.heightAnchor.constraint(equalTo: imageView1.heightAnchor, multiplier: 1)
    ]
    NSLayoutConstraint.activate(constraintimageView2)
   
    let constraintlabelView2 = [
        labelView2.topAnchor.constraint(equalTo: labelView1.topAnchor, constant: 0),
        labelView2.leftAnchor.constraint(equalTo: imageView2.leftAnchor, constant: 16),
        labelView2.widthAnchor.constraint(equalTo: labelView1.widthAnchor, multiplier: 1)
    ]
    NSLayoutConstraint.activate(constraintlabelView2)
    
    let constraintimageView3 = [
        imageView3.topAnchor.constraint(equalTo: imageView1.topAnchor, constant: 0),
        imageView3.leadingAnchor.constraint(equalTo: imageView2.trailingAnchor, constant: 0),
        imageView3.widthAnchor.constraint(equalTo: imageView1.widthAnchor, multiplier: 1),
        imageView3.heightAnchor.constraint(equalTo: imageView1.heightAnchor, multiplier: 1)
    ]
    NSLayoutConstraint.activate(constraintimageView3)
    
    let constraintlabelView3 = [
        labelView3.topAnchor.constraint(equalTo: labelView1.topAnchor, constant: 0),
        labelView3.leftAnchor.constraint(equalTo: imageView3.leftAnchor, constant: 16),
        labelView3.widthAnchor.constraint(equalTo: labelView1.widthAnchor, multiplier: 1)
    ]
    NSLayoutConstraint.activate(constraintlabelView3)
    
    let constraintcircleView1 = [
        circleView1.leftAnchor.constraint(equalTo: labelView1.leftAnchor, constant: 0),
        circleView1.topAnchor.constraint(equalTo: imageView1.bottomAnchor, constant: 64),
        circleView1.widthAnchor.constraint(equalToConstant: 30),
        circleView1.heightAnchor.constraint(equalToConstant: 30)
    ]
    NSLayoutConstraint.activate(constraintcircleView1)
    
    let constraintcircleView2 = [
        circleView2.leftAnchor.constraint(equalTo: labelView2.leftAnchor, constant: 0),
        circleView2.topAnchor.constraint(equalTo: imageView2.bottomAnchor, constant: 64),
        circleView2.widthAnchor.constraint(equalToConstant: 30),
        circleView2.heightAnchor.constraint(equalToConstant: 30)
    ]
    NSLayoutConstraint.activate(constraintcircleView2)
    
    let constraintcircleView3 = [
        circleView3.leftAnchor.constraint(equalTo: labelView3.leftAnchor, constant: 0),
        circleView3.topAnchor.constraint(equalTo: imageView3.bottomAnchor, constant: 64),
        circleView3.widthAnchor.constraint(equalToConstant: 30),
        circleView3.heightAnchor.constraint(equalToConstant: 30)
    ]
    NSLayoutConstraint.activate(constraintcircleView3)
    
    let constraintlabelName1 = [
        labelName1.topAnchor.constraint(equalTo: circleView1.topAnchor, constant: 0),
        labelName1.leftAnchor.constraint(equalTo: circleView1.rightAnchor, constant: 8)
    ]
    NSLayoutConstraint.activate(constraintlabelName1)
    
    let constraintsubLabelName1 = [
        subLabelName1.leftAnchor.constraint(equalTo: labelName1.leftAnchor, constant: 0),
        subLabelName1.firstBaselineAnchor.constraint(equalTo: circleView1.bottomAnchor, constant: 0)
    ]
    NSLayoutConstraint.activate(constraintsubLabelName1)
    
    let constraintlabelName2 = [
           labelName2.topAnchor.constraint(equalTo: circleView2.topAnchor, constant: 0),
           labelName2.leftAnchor.constraint(equalTo: circleView2.rightAnchor, constant: 8)
       ]
       NSLayoutConstraint.activate(constraintlabelName2)
    
    let constraintsubLabelName2 = [
        subLabelName2.leftAnchor.constraint(equalTo: labelName2.leftAnchor, constant: 0),
        subLabelName2.firstBaselineAnchor.constraint(equalTo: circleView2.bottomAnchor, constant: 0)
    ]
    NSLayoutConstraint.activate(constraintsubLabelName2)
    
    let constraintlabelName3 = [
           labelName3.topAnchor.constraint(equalTo: circleView3.topAnchor, constant: 0),
           labelName3.leftAnchor.constraint(equalTo: circleView3.rightAnchor, constant: 8)
       ]
       NSLayoutConstraint.activate(constraintlabelName3)
    
    let constraintsubLabelName3 = [
        subLabelName3.leftAnchor.constraint(equalTo: labelName3.leftAnchor, constant: 0),
        subLabelName3.firstBaselineAnchor.constraint(equalTo: circleView3.bottomAnchor, constant: 0)
    ]
    NSLayoutConstraint.activate(constraintsubLabelName3)
    
    let constraintpageControl = [
        pageControl.topAnchor.constraint(equalTo: borderView.bottomAnchor, constant: 8),
        pageControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 48),
        pageControl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -48),
        pageControl.heightAnchor.constraint(equalTo: circleView1.heightAnchor, multiplier: 1/2)
    ]
    NSLayoutConstraint.activate(constraintpageControl)
    
    let constraintbottomButton = [
        bottomButton.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 8),
        bottomButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
        bottomButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
        bottomButton.heightAnchor.constraint(equalTo: imageView1.heightAnchor, multiplier: 1/3)
    ]
    NSLayoutConstraint.activate(constraintbottomButton)
    
    let constraintdogGraphic = [
        doggraphic.topAnchor.constraint(equalTo: bottomButton.topAnchor, constant: 8),
        doggraphic.rightAnchor.constraint(equalTo: bottomButton.rightAnchor, constant: 16),
        doggraphic.widthAnchor.constraint(equalTo: bottomButton.heightAnchor, multiplier: 1),
        doggraphic.heightAnchor.constraint(equalTo: doggraphic.widthAnchor, multiplier: 1)
    ]
    NSLayoutConstraint.activate(constraintdogGraphic)
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/self.frame.width)
        pageControl.currentPage = Int(pageIndex)
    }
    
}
