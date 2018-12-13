
import UIKit
import Foundation



class ViewController: UIViewController {
    
    var bmi = BmiCalc(height: 0, weight: 0)
    
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

