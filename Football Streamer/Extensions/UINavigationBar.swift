//
//  UINavigationBar.swift
//  Football Streamer
//
//  Created by Erik Andresen on 02/10/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import UIKit

extension UINavigationBar {
    func configure(bgColor: UIColor, tintColor: UIColor, font: UIFont, fontColor: UIColor) {
        self.barTintColor = bgColor
        self.tintColor = tintColor
        self.isTranslucent = false
        self.barStyle = .black
        self.titleTextAttributes = [.foregroundColor : fontColor, .font : font]
        addShadow()
    }
    
    private func addShadow() {
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 3
    }
}
