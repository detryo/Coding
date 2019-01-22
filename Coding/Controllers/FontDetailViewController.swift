//
//  FontDetailViewController.swift
//  Coding
//
//  Created by Cristian Sedano Arenas on 22/1/19.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class FontDetailViewController: UIViewController {
    
    var familiName : String = ""
    var fonts : [String] = []
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var pickerFonts: UIPickerView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.labelTitle.text = familiName
        self.labelTitle.font = UIFont(name: familiName, size: 16.0)

    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true)
    }
}
