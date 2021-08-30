//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getStoryChoice2(), for: .normal)

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        storyBrain.getNextStory(userChoice: choice)
        updateStory()
    }
    
    func updateStory() {
        storyLabel.text = storyBrain.getStoryTitle()
        let choice1 = storyBrain.getStoryChoice1()
        let choice2 = storyBrain.getStoryChoice2()
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
    }
    
}

