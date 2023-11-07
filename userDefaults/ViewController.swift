//
//  ViewController.swift
//  userDefaults
//
//  Created by Agustin Carbajal on 07/11/2023.
//

import UIKit

class ViewController: UIViewController {

    private let kMyKey = "MY_KEY"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - User defaults
    
    @IBAction func getAction(_ sender: Any) {
        if let value = UserDefaults.standard.string(forKey: kMyKey) {
            print("Hay un dato guardado", value)
            showAlert(message: value)
        } else {
            print("No hay datos guardados")
            showAlert(message: "No hay datos guardados")
        }
    }
    
    @IBAction func putAction(_ sender: Any) {
        UserDefaults.standard.set("BOKEEE", forKey: kMyKey)
        UserDefaults.standard.synchronize() //forzamos que lo guarde, no seria necesario
        showAlert(message: "Hemos guardado el dato")
    }
    
    @IBAction func deleteAction(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: kMyKey)
        UserDefaults.standard.synchronize()
        showAlert(message: "Hemos eliminado el dato")
    }
    
    private func showAlert(message:String){
        let alert = UIAlertController(title: "My user defaults", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            present(alert, animated: true)
    }
}

