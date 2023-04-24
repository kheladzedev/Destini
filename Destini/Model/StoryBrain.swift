//
//  StoryBrain.swift
//  Destini
//
//  Created by Edward Kheladze on 14.04.2023.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "За тобой гонится маньяк с ножом. Ты убегаешь от него,забегаешь в заброшенное здание. Перед тобой две двери. Какую выберешь?",
            choice1: "Дверь которая слева", choice1Destination: 2,
            choice2: "Дверь которая справа", choice2Destination: 1
        ),
        Story(
            title: "Открывая дверь, перед тобой лестница. Ты в панике, быстро поднимаешься по лестнице, перед тобой еще одна дверь. Твои действия?",
            choice1: "Побежать в другом направлении, толкнуть маньяка, выйграть время и убежать.", choice1Destination: 2,
            choice2: "Открыть дверь", choice2Destination: 3
        ),
        Story(
            title: "Дверь заперта. Маньяк догоняет тебя и бросается с ножом.",
            choice1: "Защищаться", choice1Destination: 5,
            choice2: "Толкнуть его и забежать в другую дверь", choice2Destination: 4
        ),
        Story(
            title: "Дверь заперта снаружи. Маньяк тебя догоняет и убивает. ",
            choice1: "Конец", choice1Destination: 0,
            choice2: "Начать заново", choice2Destination: 0
        ),
        Story(
            title: "Ты хорошо его толкнул, он упал, ударился головой об стену. Ты убежал.",
            choice1: "Конец", choice1Destination: 0,
            choice2: "Начать заново", choice2Destination: 0
        ),
        Story(
            title: "Маньяк тебя убивает'",
            choice1: "Конец", choice1Destination: 0,
            choice2: "Начать заново", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
