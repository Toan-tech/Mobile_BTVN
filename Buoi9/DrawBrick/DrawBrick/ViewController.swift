//
//  ViewController.swift
//  DrawBrick
//
//  Created by Toan-tech on 11/2/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var containerView = UIView()
    var width: CGFloat = 0
    var squareWidth: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let brickView = Brick(startPoint: CGPoint(x: 100, y: 300), radius: 100, fillColor: UIColor.blue)
        view.addSubview(brickView)
        
        width = self.view.frame.width
        containerView.frame = CGRect(x: 0, y: 0, width: width, height: width)
        containerView.center = view.center
        containerView.backgroundColor = UIColor.lightGray
        view.addSubview(containerView)
        
        squareWidth = (containerView.bounds.width) / 6
//        drawSquare(row: 1, col: 1, radius: squareWidth, color: UIColor.purple)
        drawWall()
    }
    func drawSquare(row: Int, col: Int, radius: CGFloat, color: UIColor) {
        let d = radius * 2
        let ball = Brick(startPoint: CGPoint(x: d * CGFloat(col), y: d*CGFloat(row)), radius: radius, fillColor: color)
        containerView.addSubview(ball)
    }
    func drawWall(){
        for i in 0...2{
            for j in 0...2{
                drawSquare(row: i, col: j, radius: squareWidth, color: UIColor.blue)
            }
        }
    }

}

