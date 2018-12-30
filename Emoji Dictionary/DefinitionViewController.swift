//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Morgan Hondros on 12/30/18.
//  Copyright © 2018 Morgan Hondros. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "BirthYear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition

    }
    

}
