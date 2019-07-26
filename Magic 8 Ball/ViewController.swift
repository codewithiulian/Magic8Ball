//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Iulian Oana on 26/07/2019.
//  Copyright © 2019 Iulian Oana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Declare an image name strings collection.
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    // Declare the index image number.
    var ballIndexImage : Int = 0
    // Declare the ui image view.
    @IBOutlet weak var ballImage: UIImageView!
    // On load.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Get a ball image.
        newBallImage()
    }

    // Callback for 'Ask' button press.
    @IBAction func askButtonPressed(_ sender: Any) {
        // Get a new ball image.
        newBallImage()
    }
    
    // Motion detection (when shake ended) callback.
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        // Change the ball image.
        newBallImage()
    }
    
    // Randomly changes the image ball.
    func newBallImage(){
        // Get a random integer (0...4).
        ballIndexImage = Int(arc4random_uniform(5))
        // Assign it as the name of the UIImage 'image' property.
        ballImage.image = UIImage(named: ballArray[ballIndexImage])
    }
    
}

