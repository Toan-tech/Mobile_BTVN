import UIKit

class backGroundViewController: UIViewController {

    @IBOutlet weak var backGroundView: UIView!
    let color: [String] = ["1", "2", "3", "4", "5"]
    var change: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        change = changeColor()
    }
    @IBAction func changColorButton(_ sender: Any) {
        change = changeColor()
        if change == "1" {
            backGroundView.backgroundColor = UIColor.yellow
        } else if change == "2" {
            backGroundView.backgroundColor = UIColor.blue
        } else if change == "3" {
            backGroundView.backgroundColor = UIColor.red
        } else if change == "4" {
            backGroundView.backgroundColor = UIColor.green
        } else {
            backGroundView.backgroundColor = UIColor.gray
        }
    }
    func changeColor () -> String {
        var x: String = color.randomElement()!
        if change == x {
            x = changeColor()
        }
    return x
    }
}
