//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Morgan Hondros on 12/30/18.
//  Copyright © 2018 Morgan Hondros. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"
    var doNotUse = ["🤠","😂","💩","🤕","🦒","👠"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        if emoji == "🤠" {
            definitionLabel.text = "A Fucking Cowboy"
        }
        if emoji == "😂" {
            definitionLabel.text = "A Fucking Laughing DipShit"
        }
        if emoji == "💩" {
            definitionLabel.text = "A Fucking Shit"
        }
        if emoji == "🤕" {
            definitionLabel.text = "A Fucking Idiot"
        }
        if emoji == "🦒" {
            definitionLabel.text = "A Fucking Giraffe"
        }
        if emoji == "👠" {
            definitionLabel.text = "A Fucking Heel"
        }
    }
    

}
