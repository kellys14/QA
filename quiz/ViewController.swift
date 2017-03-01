//
//  ViewController.swift
//  quiz
//
//  Created by _____________ on ____________.
//  Copyright © 2016 CSC. All rights reserved.
//

import UIKit

var questions: [String] = ["From what is cognac is made?" , // Changed to Global variable
    "What is 7+7?",
    "What is the capital of Vermont"]

var answers: [String] = ["Grapes","14","Montpelier"]    // Changed to Global variable


class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
 
    var currentQuestionIndex: Int = 0

    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
           currentQuestionIndex = 0
        }
        print("Question count: \(questions.count)")
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        
        print("Quiz View Controller successfully loaded")
    }

}

