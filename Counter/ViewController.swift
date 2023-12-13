//
//  ViewController.swift
//  Counter
//
//  Created by AlexS on 12.12.2023.
//

import UIKit

class ViewController: UIViewController {
    private var clickCounter = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func counterButton(_ sender: Any) {
        clickCounter += 1
        counterLabel.text = "Значение счётчика: \(clickCounter)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

