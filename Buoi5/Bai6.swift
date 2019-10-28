import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pressOnButton: UIButton!
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = "Number"
    }

    @IBAction func press(_ sender: Any) {
    let number = Int.random(in: 1...100)
        numberLabel.text = String(number)
    }
}

