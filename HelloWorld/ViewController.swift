//
//  ViewController.swift
//  HelloWorld
//
//  Created by Mateusz Dettlaff on 21/01/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        var emojiDict: [String: String] = ["👾": "Alien monster",
                                           "👻": "Ghost",
                                           "🤓": "Nerd face",
                                           "🤖": "Robot face"
                                              ]
        let selectedButton = sender
        if let wordToLookup = selectedButton.titleLabel?.text {
        var meaning = emojiDict[wordToLookup]
        
        let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        }
            
    }


}

