
import Foundation

protocol Bmi {
    func bmiCalc () -> String
}

class BmiCalc: Bmi {
    var height: Double
    var weight: Double
    
    init(height: Double, weight: Double) {
        self.height = height
        self.weight = weight
    }
    
    
    func bmiCalc () -> String {
        let bmi = (weight/((height/100.00)*(height/100.00)))
       // if weight != 0 || height != 0 {
            switch bmi {
            case 0..<16: return "У Вас выраженный дефицит массы тела"
            case 16..<18.5: return "Недостаточная (дефицит) масса тела"
            case 18.5..<24.99: return "Норма"
            case 24.99..<30: return "Избыточная масса тела (предожирение)"
            case 30..<35: return "Ожирение"
            case 35..<40: return "Ожирение резкое"
            case 40...: return "Очень резкое ожирение"
            default: return ""
            }
    }
}




