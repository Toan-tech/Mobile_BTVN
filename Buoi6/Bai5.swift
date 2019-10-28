print("Làm bài 4 lên giao diện")

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var distanceTextField: UITextField!
    
    
    @IBOutlet weak var moneyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moneyLabel.isHidden = true
    }
    var m: Float!
    @IBAction func chagreButton(_ sender: Any) {
        moneyLabel.isHidden = false
        guard let a = Float(distanceTextField.text!) else {
            return
        }
        if a < 0 {
            return
        } else if a <= 1 {
                m = 5000*a
            } else if a <= 30 {
                m = 5000 + (a-1)*4000
            } else {
                m = 5000 + 29*4000 + (a-30)*3000
            }
        moneyLabel.text = String(m)
    }
}

