//
//  ViewController.swift
//  Counter
//
//  Created by AlexS on 12.12.2023.
//

import UIKit

class ViewController: UIViewController {
    private var clickCounter = 0
    let feedbackGenerator = UIImpactFeedbackGenerator(style: .light)
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func counterButton(_ sender: Any) {
        feedbackGenerator.impactOccurred()
        clickCounter += 1
        counterLabel.text = "Значение счётчика: \(clickCounter)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

