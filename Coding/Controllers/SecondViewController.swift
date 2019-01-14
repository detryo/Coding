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
        
        fibonacciID = 40
        generateFibonacciNumbers()
    }

    func generateFibonacciNumbers(){
        
        if (fibonacciID <= 1 || (fibonacciID >= 200)) {
            return
        }
        fibonacci = [0,1]
        for i in 2...fibonacciID {
            fibonacci.append(fibonacci[i-1]+fibonacci[i-2])
        }
    }
}

