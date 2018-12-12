
import Foundation
import UIKit

protocol Alert {
    func alarm ()
}

class Alarm: Alert {
    let allertController = UIAlertController(title: "Error", message: "Корректно заполните все поля", preferredStyle: .alert)
    let action = UIAlertAction(title: "ok", style: .default) { (_) in } // <--?
   
    func alarm () {
        
        allertController.addAction(action)
        
        //present(allertController, animated: true, completion: nil)
        //return true
    }

    
}


