//
//  MatchesViewController+UI.swift
//  Football Streamer
//
//  Created by Erik Andresen on 02/10/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import SnapKit

extension FootballViewController {
    func setupUI() {
        safeArea = view.safeAreaLayoutGuide
        view.backgroundColor = #colorLiteral(red: 0.8235294118, green: 0.9098039216, blue: 0.8666666667, alpha: 1)
        setupNavigationController()
    }
    
    private func setupNavigationController() {
        navigationItem.title = "Matches"
    }
    
//    private func setupButtons() {
//        footballButton = UIButton("Football", UIFont(name: "AvenirNext-Bold", size: 22)!, #colorLiteral(red: 0.8235294118, green: 0.9098039216, blue: 0.8666666667, alpha: 1), #colorLiteral(red: 0.0431372549, green: 0.4705882353, blue: 0.2509803922, alpha: 1), self, #selector(footballButtonTapped(_:)), .touchUpInside)
//        footballButton.addRoundEdges()
//        footballButton.addShadow()
//        view.addSubview(footballButton)
//        footballButton.snp.makeConstraints {
//            $0.bottom.equalTo(safeArea).offset(-100)//equalToSuperview().offset(50)
//            $0.height.equalTo(64)
//            $0.leading.equalToSuperview().offset(32)
//            $0.trailing.equalToSuperview().offset(-32)
//        }
//    }
}
