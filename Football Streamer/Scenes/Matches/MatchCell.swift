//
//  MatchCell.swift
//  Football Streamer
//
//  Created by Erik Andresen on 28/09/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import UIKit

class MatchCell: UITableViewCell {
    @IBOutlet weak var matchNameLabel: UILabel!
    
    func displayContent(matchName: String) {
        matchNameLabel.text = matchName
    }
}
