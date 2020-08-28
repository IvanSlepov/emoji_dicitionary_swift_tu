//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ivan Sliepov on 28.08.2020.
//  Copyright © 2020 Ivan Sliepov. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "🤬"{
            definitionLabel.text = "Fuck off!"
        }
        
        if emoji == "😎"{
            definitionLabel.text = "Feeling cool!"
        }
        
        if emoji == "😊"{
            definitionLabel.text = "I'm so happy!"
        }
        
        if emoji == "🥺"{
            definitionLabel.text = "I'm not so happy!"
        }
        
        if emoji == "🤥"{
            definitionLabel.text = "Bloody liar!"
        }
        
        if emoji == "😅"{
            definitionLabel.text = "So funny!"
        }
        
        if emoji == "😄"{
            definitionLabel.text = "Funny!"
        }
        
        if emoji == "🥶"{
            definitionLabel.text = "Freezin my ass off!"
        }
        
        if emoji == "🥳"{
            definitionLabel.text = "HB bruh!"
        }
        
        if emoji == "🤮"{
            definitionLabel.text = "Make me sick!"
        }
    }

    
}
