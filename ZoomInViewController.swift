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
    
    var emoji = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "🌵" {
            emojiDefLabel.text = "Cool Ass Cactus"
            }
        
        if emoji == "😻" {
            emojiDefLabel.text = "Heart Cat"
            }
            
        if emoji == "😱" {
            emojiDefLabel.text = "OH MY GOD BECKY"
            }
            
        if emoji == "😭" {
            emojiDefLabel.text = "Cry face whyyyy"
            }
            
        if emoji == "😊" {
            emojiDefLabel.text = "The usual happy face"
            }
        }
        
    }
    
    
    

   

