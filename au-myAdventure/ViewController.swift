//
//  ViewController.swift
//  au-myAdventure
//
//  Created by Ryan Johnson on 2/9/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    
    var adventureLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        optionOne.titleLabel?.textAlignment = .center
        optionTwo.titleLabel?.textAlignment = .center
        UpdateUI()
    }
    
    @IBAction func optionSelected(_ sender: UIButton) {
        guard let title = sender.titleLabel else { return }
        if (title.text == adventureLogic.getOptionOne()) {
            adventureLogic.getNextStep(1)
        } else if (title.text == adventureLogic.getOptionTwo()) {
            adventureLogic.getNextStep(2)
        }
        UpdateUI()
    }
    
    func UpdateUI() {
        storyLabel.text = adventureLogic.getScenario();
        if (adventureLogic.getOptionTwoNext() != 0) {
            optionOne.alpha = 1
            optionOne.setTitle(adventureLogic.getOptionOne(), for: .normal)
            optionTwo.setTitle(adventureLogic.getOptionTwo(), for: .normal)
        } else {
            optionOne.alpha = 0
            optionTwo.setTitle(adventureLogic.getOptionTwo(), for: .normal)
        }
        background.image = UIImage(named: adventureLogic.getImage())
    }
    
}

