//
//  LinkCell.swift
//  Football Streamer
//
//  Created by Erik Andresen on 28/09/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import UIKit

class LinkCell: UITableViewCell {
    @IBOutlet weak var linkNameLabel: UILabel!
    
    func displayContent(linkName: String) {
        linkNameLabel.text = linkName
    }
}
