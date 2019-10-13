//
//  PlayerViewController.swift
//  Football Streamer
//
//  Created by Erik Andresen on 28/09/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import WebKit

class PlayerViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    var matchLinkUrl: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        guard let url = matchLinkUrl else { return }
        print(url)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    private func configureUI() {
        navigationController?.isNavigationBarHidden = false
    }
}
