//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jimmy McDermott on 8/27/17.
//  Copyright © 2017 162 LLC. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //MARK: - Variables
    private var index = -1
    private var imageNumber = -1
    private var numberOfImages = 5
    private var soundNumber = -1
    private var numberOfSoundFiles = 3
    private var awesomePlayer = AVAudioPlayer()
    
    //MARK: - Outlets
    @IBOutlet private weak var messageLabel: UILabel!
    @IBOutlet private weak var awesomeImage: UIImageView!
    @IBOutlet private weak var soundSwitch: UISwitch!
    
    //MARK: - Functions
    private func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                audioPlayer = try AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: Couldn't be played as a sound file")
            }
            
        } else {
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
    private func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        return newIndex
    }
    
    @IBAction private func soundSwitchPressed(_ sender: UISwitch) {
        if !soundSwitch.isOn && soundNumber != -1 {
            awesomePlayer.stop()
        }
    }
    
    @IBAction private func messageButtonPressed(_ sender: UIButton) {

        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You are Amazing!",
                        "When the Genius Bar needs help, they call you!",
                        "You Brighten My Day!",
                        "You Are Da Bomb!",
                        "I can't wait to use your app!"]
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        awesomeImage.isHidden = false
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        if soundSwitch.isOn {
            soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSoundFiles)
            playSound(soundName: "sound\(soundNumber)", audioPlayer: &awesomePlayer)
        }
    }
}
