//
//  Question.swift
//  QuizApp
//
//  Created by Binh Phan on 21.06.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import Foundation
import UIKit

class Question {
    var questionImage: String
    var question: String
    var answerA: String
    var answerB: String
    var answerC: String
    var answerD: String
    var correctAnswer: Int
    
    init(image: String, text: String, optionA: String, optionB: String, optionC: String, optionD: String, correct: Int) {
        questionImage = image
        question = text
        answerA = optionA
        answerB = optionB
        answerC = optionC
        answerD = optionD
        correctAnswer = correct
        
    }
}
