
import UIKit

var bmi = Bmi.init(height: 0, weight: 0)


class ViewController: UIViewController {
    
    @IBOutlet weak var etHeight: UITextField!
    @IBOutlet weak var etWeight: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var buttonResult: UIButton!
    
    
    
    override func viewDidLoad() {
        etHeight.keyboardAppearance = .dark
        etWeight.keyboardAppearance = .dark
    }
    
    
    @IBAction func generateBmi(_ sender: UIButton) {
        bmi.height = Double(etHeight.text ?? "0") ?? 0
        bmi.weight = Double(etWeight.text ?? "0") ?? 0
        sender.pulsate()
        result.text = bmi.bmiCalc()
    }
    
    
}

