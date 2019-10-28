import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var randomImageView: UIImageView!
    
    @IBOutlet weak var pressOnButton: UIButton!
    
    @IBOutlet weak var elementLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        elementLabel.alpha = 0.0
    }
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    
    
    @IBAction func pressOn(_ sender: Any) {
        elementLabel.alpha = 1
        let mang: [String] = ["metal", "nature", "water", "fire", "earth"]
        if mang.randomElement() == "metal" {
            randomImageView.image = UIImage (named: "metal")
            a += 1
            elementLabel.text = "\(a)-Metal"
        } else if mang.randomElement() == "nature" {
            randomImageView.image = UIImage (named: "nature")
            b += 1
            elementLabel.text = "\(b)-Nature"
        } else if mang.randomElement() == "water" {
            randomImageView.image = UIImage (named: "water")
            c += 1
            elementLabel.text = "\(c)-Water"
        } else if mang.randomElement() == "fire" {
            randomImageView.image = UIImage(named: "fire")
            d += 1
            elementLabel.text = "\(d)-Fire"
        } else {
            randomImageView.image = UIImage (named: "earth")
            e += 1
            elementLabel.text = "\(e)-Earth"
        }
    }
}
