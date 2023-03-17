//
//  ViewController.swift
//  userDefaults
//
//  Created by HARSHID PATEL on 03/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextFil: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var passwordTextFil: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let a = segue.destination as! ViewController2
        a.a1 = userNameTextFil.text!
        a.a2 = passwordTextFil.text!
    }


    @IBAction func saveButtonAction(_ sender: UIButton) {
        showAlert()
    }
    
    func showAlert(){
        let alert = UIAlertController.init(title: "User Name & Password Saved", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { _ in
            UserDefaults.standard.set(self.userNameTextFil.text!, forKey: "")
            UserDefaults.standard.set(self.passwordTextFil.text!, forKey: "")
            self.performSegue(withIdentifier: "cell", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(alert, animated: true)
    }
}

