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
        
        let item = Question(image: "nintendoLogo", text: "In which year was Nintendo established?", optionA: "1870", optionB: "1889", optionC: "1925", optionD: "1955", correct: 2)
        
        list.append(item)
        
        list.append(Question(image: "nesConsole", text: "Which was Nintendo's first home console?", optionA: "NES", optionB: "Wii", optionC: "SNES", optionD: "Switch", correct: 1))
        
        list.append(Question(image: "gameCubeImage", text: "Which of these following consoles is not a Nintendo console?", optionA: "N64", optionB: "GameBoy", optionC: "Playstation", optionD: "GameCube", correct: 3))
        
        list.append(Question(image: "nintendoCharacters", text: "Which of these characters is not a Nintendo character?", optionA: "Link", optionB: "Samus", optionC: "Pikachu", optionD: "Sonic", correct: 4))
        
        list.append(Question(image: "gameBoy", text: "What is the name of Nintendo's best-selling handheld console?", optionA: "SNES", optionB: "Switch", optionC: "PSP", optionD: "GameBoy", correct: 4))
        
        list.append(Question(image: "japan", text: "What country is Nintendo from?", optionA: "Afghanistan", optionB: "Korea", optionC: "Japan", optionD: "Vietnam", correct: 3))
        
        list.append(Question(image: "360", text: "Which one of the following consoles is not from Nintendo?", optionA: "Game and Watch", optionB: "GameCube", optionC: "N3DS", optionD: "Xbox 360", correct: 4))
        
        list.append(Question(image: "diablo", text: "Which of the following game series can you not find on the SNES?", optionA: "Final Fantasy", optionB: "Diablo", optionC: "Metroid", optionD: "Super Mario Bros", correct: 2))
        
        list.append(Question(image: "nintendoLogo", text: "What is the rough translation of Nintendo", optionA: "God wills it", optionB: "praise be unto him", optionC: "Leave luck to heaven", optionD: "Fun Times everywhere", correct: 3))
        
        list.append(Question(image: "aLinkToThePast", text: "Can you name this Legend of Zelda game?", optionA: "A Link to the Past", optionB: "Ocarina of Time", optionC: "The Adventure of Link", optionD: "Oracle of Seasons", correct: 1))
    }
}
