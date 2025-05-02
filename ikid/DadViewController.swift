//
//  DadViewController.swift
//  ikid
//
//  Created by Amrith Gandham on 5/1/25.
//

import UIKit

class DadViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var currJoke = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = jokes[currJoke]
    }
    
    let jokes = [
        "I'm reading a book on anti-gravity. It's impossible to put down!",
        "Did you hear about the restaurant on the moon? Great food, no atmosphere.",
        "I would tell you a joke about construction, but I'm still working on it.",
        "Why did the golfer bring two pairs of pants? In case he got a hole in one.",
        "I used to play piano by ear, but now I use my hands."
    ]
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        currJoke = (currJoke + 1) % jokes.count
        jokeLabel.text = jokes[currJoke]
    }
}
