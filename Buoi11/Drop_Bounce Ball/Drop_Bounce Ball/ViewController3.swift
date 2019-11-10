//
//  ViewController3.swift
//  Drop_Bounce Ball
//
//  Created by Toan-tech on 11/10/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    var ball: BallView!
    let radius: CGFloat = 50.0
    var timer1: Timer!
    var timer2: Timer!
    var angle: CGFloat = 0.0
    var distance: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ball = BallView(center: CGPoint(x: radius, y: radius), radius: radius, fillColor: UIColor.blue)
        self.view.addSubview(ball)
        timer1 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(rotate1), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector
            (move1), userInfo: nil, repeats: true)
        distance = distanceValue()
    }
    func distanceValue () -> CGFloat {
        distance = (self.view.frame.maxY - radius * 2)/5
        return distance
    }
    @objc func rotate1(){
        angle += CGFloat.pi/120
        ball.transform = CGAffineTransform(rotationAngle: angle)
    }
    @objc func move1(){
        self.ball.center.y += 1
        if self.ball.center.y >= radius + distance {
            timer2.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move2), userInfo: nil, repeats: true)
        }
    }
    @objc func move2(){
        self.ball.center.x += 1
        if self.ball.center.x >= self.view.frame.maxX - radius {
            timer2.invalidate()
            timer1.invalidate()
            timer1 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(rotate2), userInfo: nil, repeats: true)
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move3), userInfo: nil, repeats: true)
        }
    }
    @objc func rotate2(){
        angle -= CGFloat.pi/120
        ball.transform = CGAffineTransform(rotationAngle: angle)
    }
    @objc func move3(){
        self.ball.center.y += 1
        if self.ball.center.y >= radius + distance * 2 {
            timer2.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move4), userInfo: nil, repeats: true)
        }
    }
    @objc func move4(){
        self.ball.center.x -= 1
        if self.ball.center.x <= radius {
            timer2.invalidate()
            timer1.invalidate()
            timer1 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(rotate3), userInfo: nil, repeats: true)
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move5), userInfo: nil, repeats: true)
        }
    }
    @objc func rotate3(){
        angle += CGFloat.pi/120
        ball.transform = CGAffineTransform(rotationAngle: angle)
    }
    @objc func move5(){
        self.ball.center.y += 1
        if self.ball.center.y >= radius + distance * 3 {
            timer2.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move6), userInfo: nil, repeats: true)
        }
    }
    @objc func move6(){
        self.ball.center.x += 1
        if self.ball.center.x >= self.view.frame.maxX - radius {
            timer2.invalidate()
            timer1.invalidate()
            timer1 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(rotate4), userInfo: nil, repeats: true)
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move7), userInfo: nil, repeats: true)
        }
    }
    @objc func move7(){
        self.ball.center.y += 1
        if self.ball.center.y >= radius + distance * 4 {
            timer2.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move8), userInfo: nil, repeats: true)
        }
    }
    @objc func rotate4(){
        angle -= CGFloat.pi/120
        ball.transform = CGAffineTransform(rotationAngle: angle)
    }
    
    @objc func move8(){
        self.ball.center.x -= 1
        if self.ball.center.x <= radius {
            timer2.invalidate()
            timer1.invalidate()
            timer1 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(rotate5), userInfo: nil, repeats: true)
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move9), userInfo: nil, repeats: true)
        }
    }
    @objc func move9 (){
        self.ball.center.y += 1
        if self.ball.center.y >= self.view.frame.maxY - radius {
            timer2.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(move10), userInfo: nil, repeats: true)
        }
    }
    @objc func rotate5(){
        angle += CGFloat.pi/120
        ball.transform = CGAffineTransform(rotationAngle: angle)
    }
    @objc func move10(){
        self.ball.center.x += 1
        if self.ball.center.x >= self.view.frame.maxX - radius {
            timer2.invalidate()
            timer1.invalidate()
        }
    }
}
