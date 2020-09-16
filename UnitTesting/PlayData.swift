//
//  PlayData.swift
//  UnitTesting
//
//  Created by Farhana Mustafa on 9/15/20.
//  Copyright © 2020 Farhana Mustafa. All rights reserved.
//

import UIKit

class PlayData {
    var allWords = [String]()
    var wordCounts = [String: Int]()
    
    init() {
        if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                allWords = allWords.filter { $0 != "" }
                
                for word in allWords {
                    wordCounts[word, default: 0] += 1
                }
                allWords = Array(wordCounts.keys)
            }
        }
        

    }
}
