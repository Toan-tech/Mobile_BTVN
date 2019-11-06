//
//  Brick.swift
//  DrawBrick
//
//  Created by Toan-tech on 11/2/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class Brick: UIView {

    var squareLayer: CAShapeLayer!
    var radius: CGFloat = 0.0
    var fillColor: UIColor!
    // Vẽ UIView
    convenience init(startPoint: CGPoint, radius: CGFloat, fillColor: UIColor) {
        // phải có chữ self. self là bản thân UIView.
        self.init(frame: CGRect(x: startPoint.x, y: startPoint.y, width: radius*2.0, height:radius*2.0))
        self.radius = radius
        self.fillColor = fillColor
    }
    
    override func draw(_ rect: CGRect) {
        if squareLayer == nil {
            squareLayer = CAShapeLayer()
            squareLayer.path = UIBezierPath(roundedRect: CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height), cornerRadius: 0).cgPath
            squareLayer.fillColor = fillColor.cgColor
            self.layer.addSublayer(squareLayer)
        
     // kích thước squareView
            let L = self.frame.size.width
            // x = 1/10L là đoạn kích thước thụt vào
            let x = L/10
            
            let topLayer = CAShapeLayer()
            let path1 = UIBezierPath()
            path1.move(to: CGPoint(x: 0, y: 0))
            path1.addLine(to: CGPoint(x: L, y: 0))
            path1.addLine(to: CGPoint(x: L - x, y: x))
            path1.addLine(to: CGPoint(x: x, y: x))
            topLayer.path = path1.cgPath
            topLayer.fillColor = UIColor.white.cgColor
            topLayer.opacity = 0.6
            squareLayer.insertSublayer(topLayer, at: 0)//insert ở đây là insert vào mảng, 0 là vị trí phần tử trong mảng
            
            let leftLayer = CAShapeLayer()
            let path2 = UIBezierPath()
            path2.move(to: CGPoint(x: 0, y: 0))
            path2.addLine(to: CGPoint(x: x, y: x))
            path2.addLine(to: CGPoint(x: x, y: L - x))
            path2.addLine(to: CGPoint(x: 0, y: L))
            leftLayer.path = path2.cgPath
            leftLayer.fillColor = UIColor.white.cgColor
            leftLayer.opacity = 0.8
            squareLayer.insertSublayer(leftLayer, at: 0)//insert ở đây là insert vào mảng, 0 là vị trí phần tử trong mảng
        
        let rightLayer = CAShapeLayer()
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: L, y: 0))
        path3.addLine(to: CGPoint(x: L, y: L))
        path3.addLine(to: CGPoint(x: L - x, y: L - x))
        path3.addLine(to: CGPoint(x: L - x, y: x))
        rightLayer.path = path3.cgPath
        rightLayer.fillColor = UIColor.black.cgColor
            rightLayer.opacity = 0.5
        squareLayer.insertSublayer(rightLayer, at: 0) //insert ở đây là insert vào mảng, 0 là vị trí phần tử trong mảng
            
            let bottomLayer = CAShapeLayer()
            let path4 = UIBezierPath()
            path4.move(to: CGPoint(x: 0, y: L))
            path4.addLine(to: CGPoint(x: x, y: L - x))
            path4.addLine(to: CGPoint(x: L - x, y: L - x))
            path4.addLine(to: CGPoint(x: L, y: L))
            bottomLayer.path = path4.cgPath
            bottomLayer.fillColor = UIColor.black.cgColor
            bottomLayer.opacity = 0.3
            squareLayer.insertSublayer(bottomLayer, at: 0)//insert ở đây là insert vào mảng, 0 là vị trí phần tử trong mảng
        
        }
    }
}
