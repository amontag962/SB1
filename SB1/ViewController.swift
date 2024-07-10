//
//  ViewController.swift
//  SB1
//
//  Created by Александр Горбунов on 09.07.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    @IBOutlet var supportButton: UIButton!
    
    var supportWords = [
            "Вперед!",
            "Ты сможешь!",
            "У тебя получится!",
            "Не останавливайся!",
            "Дерзай!",
            "Так Держать!",
            "Поверь, что ты можешь",
            "Не переживай, Ты справишься!",
            "Я так тобой горжусь!",
            "Я знаю, что сейчас тяжело, но я уверен - у тебя есть все, чтобы пройти через трудности!",
            "Я знаю, сложно, но ты сильнее всего этого"
    ]
    
    func getPhrase(phrases: [String]) -> String {
        let phrase = phrases[Int.random(in: 0..<phrases.count)]
        return phrase
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Привет мир!"
        greetingLabel.isHidden.toggle()
        startButton.setTitle("Начать", for: .normal)
        startButton.layer.cornerRadius = 10
        startButton.setTitleColor(.white, for: .normal)
        
        supportButton.setTitle("Поддержать", for: .normal)
        supportButton.layer.cornerRadius = 10
        supportButton.setTitleColor(.white, for: .normal)
        supportButton.isHidden.toggle()
    }

    @IBAction func startButtonAction() {
        if greetingLabel.isHidden {
            greetingLabel.isHidden.toggle()
            supportButton.isHidden = false
            startButton.setTitle("Остановить", for: .normal)
            greetingLabel.text = "Привет мир!"
        } else {
            greetingLabel.isHidden.toggle()
            supportButton.isHidden = true
            startButton.setTitle("Начать", for: .normal)
            supportButton.setTitle("Поддержать", for: .normal)
        }
    }
    
    @IBAction func supportButtonAction() {
        if greetingLabel.isHidden {
            supportButton.setTitle("Поддержать", for: .normal)
        } else {
            supportButton.setTitle("Еще!", for: .normal)
            greetingLabel.text = getPhrase(phrases: supportWords)
        }
        
    }
    
}


