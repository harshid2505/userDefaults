//
//  ViewController2.swift
//  userDefaults
//
//  Created by HARSHID PATEL on 06/02/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb1: UILabel!
    
    var a1 : String = ""
    var a2 : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lb1.text = a1
        lb2.text = a2
    }
    

   
}
