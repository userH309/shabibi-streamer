//
//  LinksViewController.swift
//  Football Streamer
//
//  Created by Erik Andresen on 28/09/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import WebKit
import Kanna

class LinksViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var matchUrl: URL!
    var links: [(String, String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        parseLinks(url: matchUrl)
    }
    
    private func parseLinks(url: URL) {
        if let doc = try? HTML(url: url, encoding: .utf8) {
            for link in doc.css("a, link") {
                guard let text = link.text else { return }
                guard let link = link["href"] else { return }
                if text.contains("Link ") {
                    links.append((text, link))
                }
            }
            tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? PlayerViewController {
            if let url = sender as? URL {
                viewController.matchLinkUrl = url
            }
        }
    }
}

extension LinksViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return links.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "linkCell", for: indexPath) as? LinkCell {
            let link = links[indexPath.row].0
            cell.displayContent(linkName: link)
            return cell
        } else {
            return MatchCell()
        }
    }
}

extension LinksViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let link = links[indexPath.row].1
        guard let url = URL(string: link) else { return }
        performSegue(withIdentifier: "playerViewController", sender: url)
    }
}
