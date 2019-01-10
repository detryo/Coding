//
//  FirstViewController.swift
//  Coding
//
//  Created by Cristian Sedano Arenas on 8/1/19.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var sliderAge: UISlider!
    
    var userAge = 0
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateAgeLabel()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        if let theText = textField.text {
            self.userName = theText
        }
        return true
    }
    
    @IBAction func sliderAgeMoved(_ sender: UISlider) {
        
        self.updateAgeLabel()
    }
    
    @IBAction func validateData(_ sender: UIButton) {
        
        let shoudEnterTheParty = (userName == "Cristian Sedano") || (userAge >= 18)
        
        if shoudEnterTheParty {
            self.view.backgroundColor = UIColor(red: 49.0/255.0, green: 273.0/255.0, blue: 93.0/255.0, alpha: 0.7)
        }else{
            self.view.backgroundColor = UIColor(red: 250.0/255.0, green: 50.0/255.0, blue: 50.0/255.0, alpha: 0.8)
        }
    }
    
    func updateAgeLabel(){
        
        self.userAge = Int(self.sliderAge.value)
        self.labelAge.text = "\(self.userAge)"
    }
}

