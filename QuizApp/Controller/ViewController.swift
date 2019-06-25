//
//  ViewController.swift
//  QuizApp
//
//  Created by Binh Phan on 20.06.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Int = 0
    var questionNumber: Int = 0
    
    @IBOutlet weak var optionAButton: UIButton!
    @IBOutlet weak var optionBButton: UIButton!
    @IBOutlet weak var optionCButton: UIButton!
    @IBOutlet weak var optionDButton: UIButton!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
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
        nextQuestion()
    }
    
    func checkAnswer() {
        
        let rightAnswer = allQuestions.list[questionNumber].correctAnswer
        
        if rightAnswer == pickedAnswer {
            print("nice")
        } else {
            print("noob")
        }
    }
    
    func nextQuestion() {
        
        if questionNumber <= 2 {
            
            imageView.image = UIImage(named: allQuestions.list[questionNumber].questionImage)
            questionLabel.text = allQuestions.list[questionNumber].question
            optionAButton.setTitle(allQuestions.list[questionNumber].answerA, for: .normal)
            optionBButton.setTitle(allQuestions.list[questionNumber].answerB, for: .normal)
            optionCButton.setTitle(allQuestions.list[questionNumber].answerC, for: .normal)
            optionDButton.setTitle(allQuestions.list[questionNumber].answerD, for: .normal)
            
        }
    }
}

