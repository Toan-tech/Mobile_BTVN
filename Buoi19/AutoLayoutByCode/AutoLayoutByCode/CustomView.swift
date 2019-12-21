//
//  CustomView.swift
//  AutoLayoutByCode
//
//  Created by Toan-tech on 12/17/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class CustomView: UIView {

    var customLayer: CAShapeLayer!
    var radius: CGFloat = 0.0
    var fillColor: UIColor!

    convenience init(center: CGPoint, radius: CGFloat, fillColor: UIColor) {
        self.init(frame: CGRect(x: center.x-radius
            , y: center.y-radius, width: radius * 2.0, height: radius * 2.0))
        self.radius = radius
        self.fillColor = fillColor
        if customLayer == nil {
                   customLayer = CAShapeLayer()
                   customLayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)).cgPath
                   customLayer.fillColor = fillColor.cgColor
                   self.layer.addSublayer(customLayer)
               }
    }

//    override func draw(_ rect: CGRect) {
//        if customLayer == nil {
//            customLayer = CAShapeLayer()
//            customLayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)).cgPath
//            customLayer.fillColor = fillColor.cgColor
//            self.layer.addSublayer(customLayer)
//        }
//    }

}
