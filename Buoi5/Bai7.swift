import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBOutlet weak var insertNumberField: UITextField!
    
    @IBOutlet weak var pressOnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressOn(_ sender: Any) {
        
        let number = Int.random(in: 1...100)
        numberLabel.text = String(number)
        let a = Int(insertNumberField.text!)!
        if a == number {
            messageLabel.text = "Chúc mừng"
        } else if a < number {
            messageLabel.text = "Nhỏ quá"
        } else {
            messageLabel.text = "Lớn quá"
        }
    }
}
