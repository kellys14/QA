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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Successful QA View Load")
    }
    
    // Function to add Question and Answer strings to the quiz through
    // the "add to quiz" button
    @IBAction func submitQandA(_ sender: UIButton) {
        if questionTextField.text != "" && answerTextField.text != "" { // If not empty strings
            questions.append(questionTextField.text!)
            answers.append(answerTextField.text!)
            print("Question and Answer successfully added to Quiz")
            answerTextField.text = ""
            questionTextField.text = "" // Clears the textfields for next string
            
        }
        else {
            print("Cannot added empty text to QA Arrays")
        }
    }
    
    // Below the method only worked with two seperate buttons
    
    /*    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     print("prepare segue function reached")
     var i: Int = 0
     let recievingViewController: ViewController = segue.destination as! ViewController
     
     while i < currentQAIndex {
     recievingViewController.questions.append(newQuestions[i])
     recievingViewController.answers.append(newAnswers[i])
     i += 1
     }
     } */
    
}

