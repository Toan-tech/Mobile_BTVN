//
//  ViewController.swift
//  Timer
//
//  Created by Toan-tech on 10/27/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer!
    var count = 0
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var pauseButton: UIButton!
    
    @IBOutlet weak var restartButton: UIButton!
    var m = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 20
        pauseButton.layer.cornerRadius = 20
        restartButton.layer.cornerRadius = 20
        
    }

    @IBAction func onChangeStart(_ sender: Any) {
        if m == false {
            return
        } // nếu ko có lệnh này và lệnh để m = false ở dưới thì khi ấn start nhiều lần, nó sẽ chạy càng nhanh hơn.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runtimer), userInfo: nil, repeats: true)
         m = false // kết hợp với dòng lệnh if m = false ở trên
    }
    @objc func runtimer (){
        
        count += 1
        timeLabel.text = String(count)
       
    }
    @IBAction func onChangePause(_ sender: Any) {
        timer.invalidate()
        m = true // đặt lại m = true để khi bấm start mới đếm thời gian được.
    }
    @IBAction func onChangeRestart(_ sender: Any) {
        count = 0
        timeLabel.text = String(count)
        timer.invalidate()
        m = true // đặt lại m = true để khi bấm start mới đếm thời gian được.
    }
}

