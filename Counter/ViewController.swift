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
    
    @IBAction func counterAddButton(_ sender: Any) {
        feedbackGenerator.impactOccurred()
        clickCounter += 1
        counterLabel.text = "Значение счётчика: \(clickCounter)"
    }
    @IBAction func counterSubButton(_ sender: Any) {
        feedbackGenerator.impactOccurred()
        if clickCounter != 0 {
            clickCounter -= 1
            counterLabel.text = "Значение счётчика: \(clickCounter)"
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        feedbackGenerator.impactOccurred()
        clickCounter = 0
        counterLabel.text = "Значение счётчика: \(clickCounter)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

