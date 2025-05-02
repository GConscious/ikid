//
//  GoodViewController.swift
//  ikid
//
//  Created by Amrith Gandham on 5/1/25.
//

import UIKit

class GoodViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var currJoke = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = jokes[currJoke]
    }
    
    let jokes = [
        "Why did the scarecrow win an award? Because he was outstanding in his field!",
        "Why don’t skeletons fight each other? They don’t have the guts.",
        "What do you call fake spaghetti? An impasta!",
        "Why did the math book look sad? Because it had too many problems.",
        "Why can’t you give Elsa a balloon? Because she will let it go."
    ]
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        currJoke = (currJoke + 1) % jokes.count
        jokeLabel.text = jokes[currJoke]
    }
  }

