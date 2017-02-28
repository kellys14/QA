//
//  QAViewController.swift
//  QA
//
//  Created by Sean Melnick Kelly on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit

class QAViewController: UIViewController {
    
    @IBOutlet var questionTextField: UITextField!
    @IBOutlet var answerTextField: UITextField!
    @IBOutlet var submitButton: UIButton!
    
    var newQuestions: [String] = []
    var newAnswers: [String] = []
    
    var currentQAIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Successful QA Load")
    }
    
//    viewDidLeave() to send count of QA to add to Quiz?
    
    @IBAction func submitQandA(_ sender: UIButton) {
        if questionTextField.text != "" && answerTextField.text != "" {
            newQuestions.append(questionTextField.text!)
            newAnswers.append(answerTextField.text!)
            answerTextField.text = ""
            questionTextField.text = ""
            print("\(newQuestions[currentQAIndex]) added to questions array")
            print("\(newAnswers[currentQAIndex]) added to answers array")
            print("currentQAIndex = \(currentQAIndex)")
            currentQAIndex += 1

        }
        else {
            print("Cannot added empty text to QA Arrays")
        }
    }
    
    
}
