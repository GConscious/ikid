//
//  PunViewController.swift
//  ikid
//
//  Created by Amrith Gandham on 5/1/25.
//

import UIKit

class PunViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var currJoke = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = jokes[currJoke]
    }
    
    let jokes = [
          "I used to be a banker but I lost interest.",
          "I’m reading a book about anti-gravity. It’s impossible to put down!",
          "I wondered why the baseball was getting bigger. Then it hit me.",
          "I’m on a seafood diet. I see food and I eat it.",
          "I would tell you a joke about an elevator, but it’s an uplifting experience."
      ]
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        currJoke = (currJoke + 1) % jokes.count
        jokeLabel.text = jokes[currJoke]
    }
    
}
