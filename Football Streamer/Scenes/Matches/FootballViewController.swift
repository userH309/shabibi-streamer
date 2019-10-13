//
//  FootballViewController.swift
//  Football Streamer
//
//  Created by Erik Andresen on 28/09/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import WebKit
import Kanna

class FootballViewController: UIViewController {
    @IBOutlet weak var matchTableView: UITableView!
    var safeArea: UILayoutGuide!
    var currentUrl: URL!
    var matches: [(String, String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
//        configureUI()
//        matchTableView.delegate = self
//        matchTableView.dataSource = self
//        guard let url = URL(string: "https://www.ronaldo7.live/") else { return }
//        currentUrl = url
//        parseMatches(url: url)
    }
    
    private func configureUI() {
        navigationController?.isNavigationBarHidden = false
    }
    
    private func parseMatches(url: URL) {
        if let doc = try? HTML(url: url, encoding: .utf8) {
            for link in doc.css("a, link") {
                guard let text = link.text else { return }
                guard let link = link["href"] else { return }
                if text.contains("vs") {
                    if link.contains("-vs-") {
                        matches.append((text, link))
                    }
                }
            }
            matchTableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? LinksViewController {
            if let url = sender as? URL {
                viewController.matchUrl = url
            }
        }
    }
}

extension FootballViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "matchCell", for: indexPath) as? MatchCell {
            let match = matches[indexPath.row]
            cell.displayContent(matchName: match.0)
            return cell
        } else {
            return MatchCell()
        }
    }
}

extension FootballViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let link = matches[indexPath.row].1
        let newLink = currentUrl.appendingPathComponent(link)
        performSegue(withIdentifier: "linksViewController", sender: newLink)
    }
}
