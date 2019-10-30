//
//  ViewController.swift
//  Bai4_RandomStructClass
//
//  Created by Toan-tech on 10/30/19.
//  Copyright © 2019 Toan-tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var onChangeButton: UIButton!
    var array = [Girl]()
     struct Girl {
                    var name: String = "abc"
        var color: CGColor = #colorLiteral(red: 0.6973452143, green: 0.8329830266, blue: 0.04936898791, alpha: 1)
        init(){
        }
        init (name: String, color: CGColor){
                    self.name = name
                    self.color = color
                }
            }
    let girl1 = Girl(name: "adorable", color: #colorLiteral(red: 0.8329830266, green: 0.3203224096, blue: 0.1106636526, alpha: 1))
    let girl2 = Girl(name: "attractive", color: #colorLiteral(red: 0.2554584033, green: 0.8329830266, blue: 0.1951796338, alpha: 1))
    let girl3 = Girl(name: "beautiful", color: #colorLiteral(red: 0.3611708355, green: 0.8329830266, blue: 0.7209165951, alpha: 1))
    let girl4 = Girl(name: "cute", color: #colorLiteral(red: 0.8329830266, green: 0.5304120037, blue: 0.1937103011, alpha: 1))
    let girl5 = Girl(name: "exquisite", color: #colorLiteral(red: 0.1974527784, green: 0.132510324, blue: 0.8329830266, alpha: 1))
    let girl6 = Girl(name: "gorgeous", color: #colorLiteral(red: 0.8329830266, green: 0.4903715135, blue: 0.7978488772, alpha: 1))
    let girl7 = Girl(name: "lovely", color:#colorLiteral(red: 0.3731491362, green: 0.578503302, blue: 0.8329830266, alpha: 1) )
    let girl8 = Girl(name: "pretty", color: #colorLiteral(red: 0.4181287648, green: 0.1140348532, blue: 0.8329830266, alpha: 1))
    let girl9 = Girl(name: "radiant", color: #colorLiteral(red: 0.6729394707, green: 0.6805264144, blue: 0.8329830266, alpha: 1))
    let girl10 = Girl(name: "stunning", color: #colorLiteral(red: 0.4050404505, green: 0.05589028096, blue: 0.3101061812, alpha: 1))
    var girl = Girl()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.contentMode = .scaleAspectFit
        onChangeButton.layer.cornerRadius = 20
        label.layer.cornerRadius = 20
        label.layer.masksToBounds = true
        girl = random()
        photoImageView.image = UIImage.init(named: girl.name)
        label.text = girl.name
        onChangeButton.layer.backgroundColor = girl.color
    }

    @IBAction func onPress(_ sender: Any) {
        girl = random()
        photoImageView.image = UIImage.init(named: girl.name)
        label.text = girl.name
        onChangeButton.layer.backgroundColor = girl.color
    }
   
    func random() -> Girl{
        array = [girl1, girl2, girl3, girl4, girl5, girl6, girl7, girl8, girl9, girl10]
        var a = array.randomElement()!
        if girl.name == a.name {
           a = random()
        }
        return a
    }
}
