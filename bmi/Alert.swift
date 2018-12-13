
import Foundation
import UIKit



class Alarm {
    let allertController = UIAlertController(title: "Error",
                                             message: "Корректно заполните все поля",
                                             preferredStyle: .alert)
    
    let action = UIAlertAction(title: "ok", style: .default) { (_) in } // <--?
    
    func alarm () {
        allertController.addAction(action)
       
    }
    
    func present () {
        let a = ViewController()
        a.present(allertController, animated: true, completion: nil)
    }
}


