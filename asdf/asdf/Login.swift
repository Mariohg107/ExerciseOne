//
//  ViewController.swift
//  asdf
//
//  Created by Alumnos on 26/9/22.
//

import UIKit

class MarioVC: UIViewController {

    
    @IBOutlet weak var textviewLogin: UILabel!
    @IBOutlet weak var etUsername:UITextField!
    @IBOutlet weak var etPassword:UITextField!
    
    var name : String?
    var pass : String?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func userClick(_ sender: Any) {
        
        if etUsername.text != nil || etPassword.text != nil{
            name = etUsername.text
            pass = etPassword.text
            
            performSegue(withIdentifier: "login", sender: nil)
            
        }else{
            print("Fields are empty")
        }
           
        
        
        
    }
    

}

