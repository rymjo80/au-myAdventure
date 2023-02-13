//
//  adventure.swift
//  au-myAdventure
//
//  Created by Ryan Johnson on 2/10/23.
//

import Foundation

struct Adventure {
    let scenario : String
    let option_one : String
    let option_two : String
    let image : String
    let one_next : Int
    let two_next : Int
    
    init (_ scenario : String, _ option_one : String, _ option_two : String, _ image : String, _ one_next: Int, _ two_next: Int) {
        self.scenario = scenario
        self.option_one = option_one
        self.option_two = option_two
        self.image = image
        self.one_next = one_next
        self.two_next = two_next
    }
}
