//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jimmy McDermott on 8/27/17.
//  Copyright © 2017 162 LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet private weak var awesomeLabel: UILabel!

    //MARK: - Functions
    @IBAction private func messageButtonPressed(_ sender: UIButton) {
        awesomeLabel.text = "You Are Awesome!"
    }
    
    @IBAction private func anotherMessageButtonPressed(_ sender: UIButton) {
        awesomeLabel.text = "You Are Great!"
    }
}

