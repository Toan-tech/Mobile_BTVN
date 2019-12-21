//
//  ViewController.swift
//  ScrollView_FullOption
//
//  Created by Toan-tech on 12/14/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: (UIScreen.main.bounds.size.height)/3)
        scrollView.backgroundColor = .white
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    var images: [UIImage] = []
    var texts: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        images = [
        UIImage(named: "girl1"),
        UIImage(named: "girl2"),
        UIImage(named: "girl3"),
        UIImage(named: "girl4"),
        UIImage(named: "girl5")
        ] as! [UIImage]
        
        texts = ["Beauty",
                 "Elegance",
                 "Lovely",
                 "Lady",
                 "Gentle"]
    }
    func runScrollHorizontal(arrs: [UIImage], brrs: [String]) {
        
    }

}

