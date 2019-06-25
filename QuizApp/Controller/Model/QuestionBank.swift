//
//  QuestionBank.swift
//  QuizApp
//
//  Created by Binh Phan on 21.06.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import Foundation
import UIKit

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        let item = Question(image: "nintendoLogo", text: "In which year was Nintendo established?", optionA: "21 Dec 1864", optionB: "25 Jan 1901", optionC: "23 Sep 1889", optionD: "17. Nov 1945", correct: 3)
        
        list.append(item)
    }
}
