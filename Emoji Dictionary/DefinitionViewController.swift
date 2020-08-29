//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ivan Sliepov on 28.08.2020.
//  Copyright © 2020 Ivan Sliepov. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var firstAppearanceLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        firstAppearanceLabel.text = "First appearance: \(emoji.appearanceYear)"
        categoryLabel.text = emoji.category
        definitionLabel.text = emoji.defenition
    }

    
}
