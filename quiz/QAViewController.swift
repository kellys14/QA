//
//  QAViewController.swift
//  QA
//
//  Created by Sean Melnick Kelly on 2/28/17.
//  Copyright © 2017 CSC. All rights reserved.
//

import UIKit

class QAViewController: UIViewController, UITabBarControllerDelegate {
    
    @IBOutlet var questionTextField: UITextField!
    @IBOutlet var answerTextField: UITextField!
    @IBOutlet var submitButton: UIButton!
    
    var newQuestions: [String] = []
    var newAnswers: [String] = []
    
    var currentQAIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Successful QA Load")
        self.tabBarController?.delegate = self

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
    
 //   protocol QAViewController
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    
        let item = tabBarController.selectedViewController?.view.tag
        
        if item == 1 {
            print("Tab Tag 1")
          /*  func prepare(for segue: UIStoryboardSegue, sender: UITabBarControllerDelegate?) { // override?
                let recievingViewController: ViewController = segue.destination as! ViewController
                
                var i: Int = 0
                while i <= currentQAIndex {
                    //    recievingViewController.questions = recievingViewController.questions + newQuestions[i]
                    recievingViewController.questions.append(newQuestions[i])
                    recievingViewController.answers.append(newAnswers[i])
                    i += 1
                }
            } */
        }
        if item == 2 {
            print("Tab Tag 2")
        }
        if item == 0 {
            print("Tab Tag 0")
        }
    }
 //   func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        //This method will be called when user changes tab.
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Working FUNCTION")
 /*       var i: Int = 0
        let recievingViewController: ViewController = segue.destination as! ViewController
        
        while i <= currentQAIndex {
        //    recievingViewController.questions = recievingViewController.questions + newQuestions[i]
            recievingViewController.questions.append(newQuestions[i])
            recievingViewController.answers.append(newAnswers[i])
            i += 1
        } */
    }  
    
}

