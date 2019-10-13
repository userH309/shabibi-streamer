//
//  MenuViewController.swift
//  Football Streamer
//
//  Created by Erik Andresen on 28/09/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var footballButton: UIButton!
    var safeArea: UILayoutGuide!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        createUI()
    }
    
    @objc func footballButtonTapped(_ sender: UIButton) {
        let viewController = FootballViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
