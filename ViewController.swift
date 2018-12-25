//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by James Leitch on 25/12/18.
//  Copyright © 2018 James Leitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()

    
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
        
    }
    
    // Code to detect if the phone was shaken
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    
    // Code to define a function to update the ball image
    func updateBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
        print(randomBallNumber)
    }

}

