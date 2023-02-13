//
//  adventureLogic.swift
//  au-myAdventure
//
//  Created by Ryan Johnson on 2/10/23.
//

import Foundation

struct AdventureLogic {
    var advIndex : Int = 0
    
    let adventure = [
       Adventure("Late! The alarm didn't go off and you're late for work. You might be able to make it if you hurry. What do you do now?",
                 "Jump up and rush to get ready.",
                 "Go back to sleep.",
                  "phone-table",
                 7,
                 1),
       Adventure("You can't sleep.",
                  "Eat breakfast and search for a new job on your phone.",
                  "Go for a run.",
                  "unmade-bed",
                  2,
                 5),
       Adventure("What should you eat for breakfast?",
                  "A full breakfast",
                  "Cereal",
                  "kitchen",
                 3,
                 4),
       Adventure("As you start to lift your phone to open LinkedIn, the date appears on the screen and you start to laugh. It's Saturday! You don't need to search for a new job after all.",
                  "Restart",
                  "Restart",
                  "eggs",
                 0,
                 0),
       Adventure("As you are checking LinkedIn, the date on the screen catches your eye. It's Saturday! You don't need to search for a new job after all.",
                  "Restart",
                  "Restart",
                  "cereal",
                 0,
                 0),
       Adventure("You have a good run and you're really hungry.",
                 "Stop by the cafe and get brunch.",
                 "Go home and eat breakfast.",
                 "path",
                 6,
                 2),
       Adventure("The sign at the cafe reads, \"Saturday's Special: Caramel Chocolate latte...\" and you laugh when you realize that you weren't late for work after all.",
                 "Restart",
                 "Restart",
                 "cafe",
                 0,
                 0),
       Adventure("Your car won't start! What do you do?",
                  "Walk two blocks and rent a scooter.",
                  "Catch an Uber.",
                  "inside-car",
                  8,
                  11),
       Adventure("You feel a little foolish riding a scooter dressed for work and you start to wonder if it's worth it. What will you do?",
                  "Keep riding the 2 miles to work.",
                  "Ride 2 blocks to get ice cream.",
                  "scooters",
                  9,
                  10),
       Adventure("Well...no one else is at work. You check your phone and shake your head. It's Saturday!",
                  "Restart",
                  "Restart",
                  "office",
                  0,
                  0),
       Adventure("As you walk up to the counter to order your ice cream the worker says, \"Happy Saturday!\"",
                  "Restart",
                  "Restart",
                  "icecream",
                  0,
                  0),
       Adventure("The driver was late coming, but you're finally in the car. Where do you want the driver to drop you off?",
                  "Near the front door so you can walk in proudly.",
                  "In the back so you can sneak in the back door.",
                  "uber",
                  9,
                  9)
    ]
    
    func getIndex() -> Int {
        return advIndex
    }
    
    func getOptionOne() -> String {
      return  adventure[advIndex].option_one
    }
    
    func getOptionTwo() -> String {
      return  adventure[advIndex].option_two
    }
    
    func getImage() -> String {
        return  adventure[advIndex].image
    }
    
    mutating func getNextStep(_ choice : Int) {
        if (choice == 1) {
             setIndex(adventure[advIndex].one_next)
        } else {
            setIndex(adventure[advIndex].two_next)
        }
    }
    
    func getOptionTwoNext() -> Int {
        return adventure[advIndex].two_next
    }
    
    func getScenario() -> String {
        return adventure[advIndex].scenario
    }
    
    mutating func setIndex(_ index : Int) {
        advIndex = index
    }
}
