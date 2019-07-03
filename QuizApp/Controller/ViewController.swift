//
//  ViewController.swift
//  QuizApp
//
//  Created by Binh Phan on 20.06.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit
import ProgressHUD

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Int = 0
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var optionAButton: UIButton!
    @IBOutlet weak var optionBButton: UIButton!
    @IBOutlet weak var optionCButton: UIButton!
    @IBOutlet weak var optionDButton: UIButton!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var questionNumberProgress: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = 1
        } else if sender.tag == 2 {
            pickedAnswer = 2
        } else if sender.tag == 3 {
            pickedAnswer = 3
        } else if sender.tag == 4 {
            pickedAnswer = 4
        }
        
        checkAnswer()
        
        questionNumber += 1
        
        nextQuestion()
        
    }
    
    func checkAnswer() {
        
        let rightAnswer = allQuestions.list[questionNumber].correctAnswer
        
        if rightAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct!")
            score = score + 1000
            
        } else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    func nextQuestion() {
        
        if questionNumber <= 9 {
            
            imageView.image = UIImage(named: allQuestions.list[questionNumber].questionImage)
            questionLabel.text = allQuestions.list[questionNumber].question
            optionAButton.setTitle(allQuestions.list[questionNumber].answerA, for: .normal)
            optionBButton.setTitle(allQuestions.list[questionNumber].answerB, for: .normal)
            optionCButton.setTitle(allQuestions.list[questionNumber].answerC, for: .normal)
            optionDButton.setTitle(allQuestions.list[questionNumber].answerD, for: .normal)
            
            updateUI()
            
        } else {
            let alert = UIAlertController(title: "You've answered all Questions! Restart?", message: "You have a score of \(score)", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.restart()
            }))
            
            self.present(alert, animated: true)
        }
    }
    
    func updateUI() {
        questionNumberProgress.text = "\(questionNumber + 1) / 10"
        
        scoreLabel.text = "Score: \(score)"
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber + 1)
    }
    
    func restart() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
}

