//
//  SecondViewController.swift
//  Coding
//
//  Created by Cristian Sedano Arenas on 8/1/19.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var fibonacci : [Int] = [0,1]
    var fibonacciID = 1

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func generateFibonacciNumbers(){
        
        if (fibonacciID <= 1 || (fibonacciID >= 200)) {
            return
        }
        // Generar los numeros de Fibonacci hasta el fibonacciID
        
    }

}

