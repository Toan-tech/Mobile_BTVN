//
//  Ball.swift
//  Drop_Bounce Ball
//
//  Created by Toan-tech on 11/10/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class BallView: UIView {

    var ballLayer1: CAShapeLayer!
    var ballLayer2: CAShapeLayer!
    var radius: CGFloat = 0.0
    var fillColor1: UIColor!
    var fillColor2: UIColor!
    
    convenience init(center: CGPoint, radius: CGFloat, fillColor: UIColor) {
        self.init(frame: CGRect(x:center.x-radius, y: center.y - radius, width: radius * 2.0, height: radius * 2.0))
        self.radius = radius
        self.fillColor1 = fillColor
    }
    
    override func draw(_ rect: CGRect) {
        if ballLayer1 == nil {
            ballLayer1 = CAShapeLayer()
            ballLayer1.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)).cgPath
            ballLayer1.fillColor = fillColor1.cgColor
            self.layer.addSublayer(ballLayer1)
            
            if ballLayer2 == nil {
                ballLayer2 = CAShapeLayer()
                ballLayer2.path = UIBezierPath(ovalIn: CGRect(x: self.frame.size.width/2, y: self.frame.size.height/10, width: self.frame.size.width/5, height: self.frame.size.height/5)).cgPath
                ballLayer2.fillColor = UIColor.white.cgColor
                self.layer.addSublayer(ballLayer2)
            }
        }
    }
}
