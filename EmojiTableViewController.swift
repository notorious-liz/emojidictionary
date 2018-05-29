//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Liz Carbone on 4/16/18.
//  Copyright © 2018 Liz Carbone. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis = ["😊","😭", "😱", "😻", "🌵"]    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]
        
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "zoominSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let zoominVC = segue.destination as! ZoomInViewController
        zoominVC.emoji = sender as! String
        

        
    }
  


}
