//
//  ZoomInViewController.swift
//  Emoji Dictionary
//
//  Created by Liz Carbone on 4/27/18.
//  Copyright © 2018 Liz Carbone. All rights reserved.
//

import UIKit

class ZoomInViewController: UIViewController {
    @IBOutlet weak var emojiDefLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()
    
    @IBOutlet weak var creationLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefLabel.text = emoji.emojiDef
        creationLabel.text = "Creation year: \(emoji.emojiCreation)"
        categoryLabel.text = "Category: \(emoji.emojiCategory)"

        /*
        emojiLabel.text = emoji
        
        if emoji == "🌵" {
            emojiDefLabel.text = "Cool Ass Cactus"
            creationLabel.text = "Creaction date: 2015"
            categoryLabel.text = "Category: Nature"
            }
        
        if emoji == "😻" {
            emojiDefLabel.text = "Heart Cat"
            creationLabel.text = "Creation date: 2010"
            categoryLabel.text = "Category: Animals"
            }
            
        if emoji == "😱" {
            emojiDefLabel.text = "OH MY GOD BECKY"
            creationLabel.text = "Creation date: 2011"
            categoryLabel.text = "Category: Fun"
            }
            
        if emoji == "😭" {
            emojiDefLabel.text = "Cry face whyyyy"
            creationLabel.text = "Creation date: 2013"
            categoryLabel.text = "Category: Fun"
            }
            
        if emoji == "😊" {
            emojiDefLabel.text = "The usual happy face"
            creationLabel.text = "Creation date: 2012"
            categoryLabel.text = "Category: Fun"
            }
        */
        }
        
    }
    
    
    

   

