//
//  ViewController.swift
//  BrickUIlayer
//
//  Created by Toan-tech on 11/1/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let shape1 = CAShapeLayer()
    let shape2 = CAShapeLayer()
    let shape3 = CAShapeLayer()
    let shape4 = CAShapeLayer()
    let brickView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brickView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        brickView.center = view.center
        brickView.backgroundColor = #colorLiteral(red: 0.7604695431, green: 0.3945906691, blue: 0.06401962281, alpha: 1)
        view.addSubview(brickView)
        view.backgroundColor = .white
        shapeTrapezoid()
    }
    func shapeTrapezoid (){
        shape1.fillColor = #colorLiteral(red: 1, green: 0.5188776759, blue: 0.08418433505, alpha: 1)
        let shape1Path = UIBezierPath()
        shape1Path.move(to: CGPoint(x: 0, y: 0))
        shape1Path.addLine(to: CGPoint(x: brickView.frame.width, y: 0))
        shape1Path.addLine(to: CGPoint(x: brickView.frame.width-20, y: 20))
        shape1Path.addLine(to: CGPoint(x: 20, y: 20))
        shape1.path = shape1Path.cgPath
        brickView.layer.addSublayer(shape1)
    
        shape2.fillColor = #colorLiteral(red: 0.8547747462, green: 0.4435235337, blue: 0.07195864362, alpha: 1)
    let shape2Path = UIBezierPath()
    shape2Path.move(to: CGPoint(x: 0, y: 0))
    shape2Path.addLine(to: CGPoint(x: 20, y: 20))
        shape2Path.addLine(to: CGPoint(x: 20, y: brickView.frame.height-20))
        shape2Path.addLine(to: CGPoint(x: 0, y: brickView.frame.height))
    shape2.path = shape2Path.cgPath
    brickView.layer.addSublayer(shape2)
    
    shape3.fillColor = #colorLiteral(red: 0.6824436865, green: 0.354104794, blue: 0.05745106796, alpha: 1)
    let shape3Path = UIBezierPath()
        shape3Path.move(to: CGPoint(x: 0, y: brickView.frame.height))
        shape3Path.addLine(to: CGPoint(x: 20, y: brickView.frame.height-20))
        shape3Path.addLine(to: CGPoint(x: brickView.frame.width-20, y: brickView.frame.height-20))
    shape3Path.addLine(to: CGPoint(x: 200, y: 200))
    shape3.path = shape3Path.cgPath
    brickView.layer.addSublayer(shape3)
    
        shape4.fillColor = #colorLiteral(red: 0.5092599937, green: 0.2642436419, blue: 0.04287171393, alpha: 1)
        let shape4Path = UIBezierPath()
        shape4Path.move(to: CGPoint(x: 200, y: 0))
        shape4Path.addLine(to: CGPoint(x: brickView.frame.width-20, y: 20))
        shape4Path.addLine(to: CGPoint(x: brickView.frame.width-20, y: brickView.frame.height-20))
        shape4Path.addLine(to: CGPoint(x: 200, y: 200))
        shape4.path = shape4Path.cgPath
        brickView.layer.addSublayer(shape4)
    }

}

