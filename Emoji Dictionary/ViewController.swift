//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Morgan Hondros on 12/29/18.
//  Copyright © 2018 Morgan Hondros. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArry()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🤠"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A Fucking Cowboy!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😂"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "A Fucking Laughing DipShit!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2013
        emoji3.category = "Other"
        emoji3.definition = "A Fucking Shit!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤕"
        emoji4.birthYear = 2012
        emoji4.category = "Smiley"
        emoji4.definition = "A Fucking Idiot!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🦒"
        emoji5.birthYear = 2009
        emoji5.category = "Animal"
        emoji5.definition = "A Fucking Giraffe!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👠"
        emoji6.birthYear = 2011
        emoji6.category = "Other"
        emoji6.definition = "A Fucking Heel!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }
    
}

