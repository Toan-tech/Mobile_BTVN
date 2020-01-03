//
//  CustomCell2.swift
//  CustomCellTableView
//
//  Created by Toan-tech on 12/31/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class CustomCell2: UITableViewCell {
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let customImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "girl2")
        imageView.backgroundColor = .yellow
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let customLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Elegant"
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 32)
        return label
    }()
    
    let customLabel2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = """
        Volutpat est velit egestas dui id ornare arcu odio. Libero id faucibus nisl tincidunt eget nullam non nisi est. Lectus proin nibh nisl condimentum id venenatis a condimentum. Fermentum leo vel orci porta non pulvinar. Auctor neque vitae tempus quam pellentesque nec nam aliquam sem. Tortor consequat id porta nibh venenatis cras sed. In nisl nisi scelerisque eu ultrices vitae auctor eu augue.
        """
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    var verified = false
    
    let customImage2: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.addSubview(containerView)
        containerView.addSubview(customImage)
        containerView.addSubview(customImage2)
        containerView.addSubview(customLabel)
        containerView.addSubview(customLabel2)
        
        customImage2.image = (verified ? UIImage(named: "circle_verified") : UIImage(named:"circle"))
        customImage2.isUserInteractionEnabled = true
        customImage2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapicon)))
        setupLayout()
    }
    
    @objc func tapicon (){
        verified.toggle()
        customImage2.image = (verified ? UIImage(named: "circle_verified") : UIImage(named:"circle"))
    }
    
    func setupLayout() {
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4).isActive = true
        
        let customImageconstraint = [
            customImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            customImage.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            customImage.widthAnchor.constraint(equalToConstant: 50),
            customImage.heightAnchor.constraint(equalTo: customImage.widthAnchor, multiplier: 1)
        ]
        NSLayoutConstraint.activate(customImageconstraint)
        
        let customLabelconstraint = [
            customLabel.leftAnchor.constraint(equalTo: customImage.rightAnchor, constant: 32),
            customLabel.bottomAnchor.constraint(equalTo: customImage.bottomAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(customLabelconstraint)
        
        let customLabel2constraint = [
            customLabel2.topAnchor.constraint(equalTo: customLabel.bottomAnchor, constant: 16),
            customLabel2.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            customLabel2.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -16),
            customLabel2.leftAnchor.constraint(equalTo: customLabel.leftAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(customLabel2constraint)
        
        let customImage2constraint = [
            customImage2.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            customImage2.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            customImage2.widthAnchor.constraint(equalToConstant: 30),
            customImage2.heightAnchor.constraint(equalTo: customImage2.widthAnchor, multiplier: 1)
        ]
        NSLayoutConstraint.activate(customImage2constraint)
    }
}
