//
//  ViewController.swift
//  Counter
//
//  Created by AlexS on 12.12.2023.
//

import UIKit

class ViewController: UIViewController {
    private var clickCounter = 0
    private let feedbackGenerator = UIImpactFeedbackGenerator(style: .light)
    
    @IBOutlet private weak var counterLabel: UILabel!
    
    @IBAction private func counterAddButton(_ sender: Any) {
        feedbackGenerator.impactOccurred()
        let range = NSMakeRange(infoTextView.text.count - 1, 1)
        clickCounter += 1
        counterLabel.text = "Значение счётчика: \(clickCounter)"
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss: значение изменено на +1\n"
        infoTextView.text.append(dateFormatter.string(from: currentDate))
        
        infoTextView.scrollRangeToVisible(range)
        
        
    }
    @IBAction private func counterSubButton(_ sender: Any) {
        feedbackGenerator.impactOccurred()
        let range = NSMakeRange(infoTextView.text.count - 1, 1)
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        if clickCounter != 0 {
            clickCounter -= 1
            counterLabel.text = "Значение счётчика: \(clickCounter)"
            dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss: значение изменено на -1\n"
            infoTextView.text.append(dateFormatter.string(from: currentDate))
            infoTextView.scrollRangeToVisible(range)
        } else {
            dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss: попытка уменьшить значение счётчика ниже 0\n"
            infoTextView.text.append(dateFormatter.string(from: currentDate))
            infoTextView.scrollRangeToVisible(range)
        }
    }
    
    @IBAction private func resetButton(_ sender: Any) {
        feedbackGenerator.impactOccurred()
        let range = NSMakeRange(infoTextView.text.count - 1, 1)
        clickCounter = 0
        counterLabel.text = "Значение счётчика: \(clickCounter)"
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss: значение сброшено\n"
        infoTextView.text.append(dateFormatter.string(from: currentDate))
        infoTextView.scrollRangeToVisible(range)
    }
    
    @IBOutlet private weak var infoTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextView.isEditable = false
        infoTextView.text.append("\n")
        
    }

    
}

