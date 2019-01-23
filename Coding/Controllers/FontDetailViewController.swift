//
//  FontDetailViewController.swift
//  Coding
//
//  Created by Cristian Sedano Arenas on 22/1/19.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class FontDetailViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var familiName : String = ""
    var fonts : [String] = []
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var pickerFonts: UIPickerView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.labelTitle.text = familiName
        self.labelTitle.font = UIFont(name: familiName, size: 22.0)
        
        if fonts.count == 0 {
            self.pickerFonts.isHidden = true
        }
        
        self.pickerFonts.dataSource = self
        self.pickerFonts.delegate = self
        self.textView.font = UIFont(name: familiName, size: 15.0)

    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true)
    }
    // MARK: - UIPIckerView Data Source Methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.fonts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fonts[row]
    }
    // MARK: - UIPickerView Delegate
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let font = fonts[row]
        self.textView.font = UIFont.init(name: font, size: 15.0)
    }
}
