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
        } else {
            print("No hay datos guardados")
        }
    }
    
    @IBAction func putAction(_ sender: Any) {
        UserDefaults.standard.set("BOKEEE", forKey: kMyKey)
        UserDefaults.standard.synchronize() //forzamos que lo guarde, no seria necesario
    }
    
    @IBAction func deleteAction(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: kMyKey)
        UserDefaults.standard.synchronize() 
    }
}

