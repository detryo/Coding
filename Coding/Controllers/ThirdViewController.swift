//
//  ThirdViewController.swift
//  Coding
//
//  Created by Cristian Sedano Arenas on 8/1/19.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var families : [String] = []
    var fonts : [String: [String]] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()

        families  = UIFont.familyNames.sorted(by: {return $0 < $1})
        for fam in families {
            fonts[fam] = UIFont.fontNames(forFamilyName: fam)
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowFontsForFamilies"{
            let navController = segue.destination as! UINavigationController
            let destinationViewController = navController.topViewController as! FontDetailViewController
            let idx = self.tableView.indexPathForSelectedRow!.row
            destinationViewController.familiName = self.families[idx]
            destinationViewController.fonts = self.fonts[self.families[idx]]!
        }
    }
    
    // MARK: - Method of Protocol UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.families.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FontFamillyCell", for: indexPath)
        let fontFamily = families[indexPath.row]
        cell.textLabel?.text = fontFamily
        cell.textLabel?.font = UIFont(name: fontFamily, size: 20.0)
        return cell
    }
    
    // MARK: Method of Protocol UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = indexPath.row
        let fontFamily = families[row]
        let familyFonts = fonts[fontFamily]!
    }
}
