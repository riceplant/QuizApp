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
        let item = Question(text: "In which year was Nintendo established?", correctAnswer: "23 September 1889", image: UIImage(named: "nintendoLogo")!)
        
        list.append(item)
    }
}
