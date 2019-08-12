//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Jason Ritchie on 8/12/19.
//  Copyright © 2019 Jason Ritchie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Create image name array
    let magic8BallImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5", ]
    
    // Set necessary variables
    var magic8BallImageNumber: Int = 0
    
    // Add image resources
    @IBOutlet weak var imageView8Ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Run the randomizer function to select an image from the image array
        randomizeMagic8Ball()
        
    }
    
    // Action button to answer the question
    @IBAction func buttonAnswer(_ sender: UIButton) {
        
        // Run the randomizer function to select an image from the image array
        randomizeMagic8Ball()
    
    }
    
    
    // Function to randomly select an 8Ball image
    func randomizeMagic8Ball() {
        // Select a random number based on the total number of values in the image array
        magic8BallImageNumber = Int.random(in: 0 ... 4)
        
        // Change the magic 8 ball answer to the index of the array selected in the randomizer above
        imageView8Ball.image = UIImage(named: magic8BallImageArray[magic8BallImageNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomizeMagic8Ball()
    }
    
}

