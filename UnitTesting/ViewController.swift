//
//  ViewController.swift
//  UnitTesting
//
//  Created by Farhana Mustafa on 9/15/20.
//  Copyright © 2020 Farhana Mustafa. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var playData = PlayData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playData.allWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let word = playData.allWords[indexPath.row]
        cell.textLabel!.text = word
        cell.detailTextLabel!.text = "\(playData.wordCounts[word]!)"
        return cell
    }

}

