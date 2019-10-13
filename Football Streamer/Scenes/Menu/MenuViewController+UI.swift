//
//  MenuViewController+UI.swift
//  Football Streamer
//
//  Created by Erik Andresen on 02/10/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import SnapKit

extension MenuViewController {
    func createUI() {
        view.backgroundColor = .customWhite
        configureNavigationController()
        createButtons()
    }
    
    private func configureNavigationController() {
        navigationItem.title = "Main"
    }
    
    private func createButtons() {
        let footballButton = UIButton(title: "Fotball", titleColor: .customWhite, bgColor: .customGreen, target: self, selector: #selector(footballButtonTapped(_:)))
        view.addSubview(footballButton)
        footballButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).offset(-100)
            $0.height.equalTo(64)
            $0.leading.equalToSuperview().offset(32)
            $0.trailing.equalToSuperview().offset(-32)
        }
    }
}
