//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Liz Carbone on 4/16/18.
//  Copyright © 2018 Liz Carbone. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis : [Emoji] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji)"
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "zoominSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let zoominVC = segue.destination as! ZoomInViewController
        zoominVC.emoji = sender as! Emoji
        
        
    }
  
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😊"
        smiley.emojiDef = "Normal smiley face"
        smiley.emojiCreation = 2012
        smiley.emojiCategory = "Fun"
        
        
        let cryFace = Emoji()
        cryFace.theEmoji = "😭"
        cryFace.emojiDef = "WHYYY cry face"
        cryFace.emojiCreation = 2011
        cryFace.emojiCategory = "Fun"
       
        let screamFace = Emoji()
        screamFace.theEmoji = "😱"
        screamFace.emojiDef = "OH MY GOD BECKY"
        screamFace.emojiCreation = 2013
        screamFace.emojiCategory = "Fun"
        
        let cactus = Emoji()
        cactus.theEmoji = "🌵"
        cactus.emojiDef = "Cool-ass cactus"
        cactus.emojiCreation = 2015
        cactus.emojiCategory = "Nature"
        
        let catHeart = Emoji()
        catHeart.theEmoji = "😻"
        catHeart.emojiDef = "Heart eyes cat"
        catHeart.emojiCreation = 2015
        catHeart.emojiCategory = "Animals"
        
        return [smiley, cryFace, screamFace, cactus, catHeart]
    }

}
