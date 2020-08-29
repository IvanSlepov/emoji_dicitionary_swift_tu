//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ivan Sliepov on 28.08.2020.
//  Copyright © 2020 Ivan Sliepov. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
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
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.defenition = "Feeling cool!"
        emoji1.category = "Category: Cool"
        emoji1.appearanceYear = 2000
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😊"
        emoji2.defenition = "I'm so happy!"
        emoji2.category = "Category: Smiley"
        emoji2.appearanceYear = 2000
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🥺"
        emoji3.defenition = "I'm not so happy!"
        emoji3.category = "Category: Sad"
        emoji3.appearanceYear = 2000
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤥"
        emoji4.defenition = "Bloody liar!"
        emoji4.category = "Category: Traits"
        emoji4.appearanceYear = 2010
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😅"
        emoji5.defenition = "So funny!"
        emoji5.category = "Category: Smiley"
        emoji5.appearanceYear = 2005
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😄"
        emoji6.defenition = "Funny!"
        emoji6.category = "Category: Smiley"
        emoji6.appearanceYear = 1995
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🤬"
        emoji7.defenition = "Fuck off!"
        emoji7.category = "Category: Swear"
        emoji7.appearanceYear = 2000
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🥶"
        emoji8.defenition = "Freezin my ass off!"
        emoji8.category = "Category: Swear"
        emoji8.appearanceYear = 2009
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🥳"
        emoji9.defenition = "HB bruh!"
        emoji9.category = "Category: Congrats"
        emoji9.appearanceYear = 2002
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "🤮"
        emoji10.defenition = "Make me sick!"
        emoji10.category = "Category: Well-being"
        emoji10.appearanceYear = 2000
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10]
    }
    
}

