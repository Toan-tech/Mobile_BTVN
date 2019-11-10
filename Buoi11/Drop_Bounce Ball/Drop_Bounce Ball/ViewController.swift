//
//  ViewController.swift
//  Drop_Bounce Ball
//
//  Created by Toan-tech on 11/10/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ball: BallView!
    let radius: CGFloat = 50.0
    var timer: Timer!
    var v: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ball = BallView(center: CGPoint(x: view.bounds.midX, y: 100), radius: radius, fillColor: UIColor.blue)
        view.addSubview(ball)
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(drop1), userInfo: nil, repeats: true)
    }
    
    @objc func drop1() {
        v += 980 * 0.01
        self.ball.frame.origin.y += v * 0.01
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2 {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(bounce1), userInfo: nil, repeats: true)
            v = 900
            print(v)
        }
    }
    
    @objc func bounce1(){
        self.ball.frame.origin.y -= v * 0.01
        v -= 980 * 0.01
        if v <= 0 {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(drop2), userInfo: nil, repeats: true)
            print(v)
            v = 0
        }
    }
    @objc func drop2(){
        v += 980 * 0.01
        self.ball.frame.origin.y += v * 0.01
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2 {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(bounce2), userInfo: nil, repeats: true)
            v = 600
            print(v)
    }
}
    @objc func bounce2(){
        self.ball.frame.origin.y -= v * 0.01
               v -= 980 * 0.01
               if v <= 0 {
                   timer.invalidate()
                   timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(drop3), userInfo: nil, repeats: true)
                   v = 0
    }
}
    @objc func drop3 (){
        v += 980 * 0.01
        self.ball.frame.origin.y += v * 0.01
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2 {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(bounce4), userInfo: nil, repeats: true)
            v = 400
            print(v)
    }
}
    @objc func bounce4(){
        self.ball.frame.origin.y -= v * 0.01
                      v -= 980 * 0.01
                      if v <= 0 {
                          timer.invalidate()
                          timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(drop4), userInfo: nil, repeats: true)
                          v = 0
           }
    }
    @objc func drop4(){
        v += 980 * 0.01
        self.ball.frame.origin.y += v * 0.01
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2 {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(bounce5), userInfo: nil, repeats: true)
            v = 200
            print(v)
    }
}
    @objc func bounce5(){
        self.ball.frame.origin.y -= v * 0.01
                             v -= 980 * 0.01
                             if v <= 0 {
                                 timer.invalidate()
                                 timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(drop5), userInfo: nil, repeats: true)
                                 v = 0
    }
}
    @objc func drop5(){
        v += 980 * 0.01
               self.ball.frame.origin.y += v * 0.01
               if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2 {
                   timer.invalidate()
                   timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(bounce6), userInfo: nil, repeats: true)
                   v = 100
                   print(v)
    }
}
    @objc func bounce6(){
        self.ball.frame.origin.y -= v * 0.01
        v -= 980 * 0.01
        if v <= 0 {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(drop6), userInfo: nil, repeats: true)
            v = 0
    }
}
    @objc func drop6(){
        v += 980 * 0.01
        self.ball.frame.origin.y += v * 0.01
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2 {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(bounce7), userInfo: nil, repeats: true)
            v = 40
            print(v)
    }
}
    @objc func bounce7(){
        self.ball.frame.origin.y -= v * 0.01
        v -= 980 * 0.01
        if v <= 0 {
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(drop7), userInfo: nil, repeats: true)
            v = 0
    }
}
    @objc func drop7(){
        v += 980 * 0.01
        self.ball.frame.origin.y += v * 0.01
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius * 2 {
            timer.invalidate()
    }
}
}
