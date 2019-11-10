//
//  ViewController2.swift
//  Drop_Bounce Ball
//
//  Created by Toan-tech on 11/10/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var ball: BallView!
    var timer1: Timer!
    var timer2: Timer!
    let radius: CGFloat = 50.0
    var angle: CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        ball = BallView(center: CGPoint(x: radius, y: radius),
            radius: radius,
            fillColor: UIColor.blue)
        view.addSubview(ball)
        timer1 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector
            (rotate), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector
            (move), userInfo: nil, repeats: true)
}
    @objc func rotate (){
        angle += CGFloat.pi/120
        ball.transform = CGAffineTransform(rotationAngle: angle)
    }
    @objc func move(){
        self.ball.center.y += 1
        if self.ball.center.y >= self.view.frame.maxY - radius {
            timer2.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector
                (move2), userInfo: nil, repeats: true)
        }
    }
    @objc func move2(){
        self.ball.center.x += 1
        if self.ball.center.x >= self.view.bounds.maxX - radius {
            timer2.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector
                (move3), userInfo: nil, repeats: true)
        }
    }
    @objc func move3(){
        self.ball.center.y -= 1
        if self.ball.center.y <= radius {
            timer2.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move4), userInfo: nil, repeats: true)
        }
    }
    @objc func move4(){
        self.ball.center.x -= 1
        if self.ball.center.x <= radius {
            timer2.invalidate()
            timer1.invalidate()
        }
    }
}
