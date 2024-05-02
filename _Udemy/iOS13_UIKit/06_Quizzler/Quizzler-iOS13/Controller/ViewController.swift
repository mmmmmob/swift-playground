//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerButtonOne: UIButton!
    @IBOutlet weak var answerButtonTwo: UIButton!
    @IBOutlet weak var answerButtonThree: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        let result = quizBrain.checkAnswer(from: userAnswer)
        
        if result {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
        quizBrain.nextQuestion()
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        let choices = quizBrain.getChoice()
        
        answerButtonOne.setTitle(choices[0], for: .normal)
        answerButtonTwo.setTitle(choices[1], for: .normal)
        answerButtonThree.setTitle(choices[2], for: .normal)
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        answerButtonOne.backgroundColor = UIColor.clear
        answerButtonTwo.backgroundColor = UIColor.clear
        answerButtonThree.backgroundColor = UIColor.clear
        
        progressBar.setProgress(quizBrain.getProgress(), animated: true)
    }
}

