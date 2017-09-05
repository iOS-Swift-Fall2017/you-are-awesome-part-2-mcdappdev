//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jimmy McDermott on 8/27/17.
//  Copyright © 2017 162 LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Variables
    var index = 0
    
    //MARK: - Outlets
    @IBOutlet private weak var messageLabel: UILabel!
    
    //MARK: - Functions
    @IBAction private func messageButtonPressed(_ sender: UIButton) {

        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You are Amazing!",
                        "When the Genius Bar needs help, they call you!",
                        "You Brighten My Day!",
                        "You Are Da Bomb!",
                        "I can't wait to use your app!"]
        
        var newIndex = -1
        
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[newIndex]
        
        
//        let randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
//        messageLabel.text = messages[randomIndex]
//
        
//        messageLabel.text = messages[index]
//        index = index + 1
//
//        if index == messages.count {
//            index = 0
//        }
//
        
//        let message1 = "You Da Bomb!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
    }
}






























