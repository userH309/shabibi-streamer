//
//  UIButton.swift
//  Football Streamer
//
//  Created by Erik Andresen on 02/10/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import Foundation

import UIKit

extension UIButton {
    convenience init(title: String, titleColor: UIColor, bgColor: UIColor, target: Any?, selector: Selector) {
        self.init()
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 22)!
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(.lightGray, for: .highlighted)
        self.backgroundColor = bgColor
        self.addTarget(target, action: selector, for: .touchUpInside)
        addRoundEdges()
        addShadow()
    }
    
    private func addRoundEdges() {
        self.layer.cornerRadius = 3
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        self.clipsToBounds = false
    }
    
    private func addShadow() {
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize(width: 3, height: 4)
        self.layer.shadowRadius = 4
    }
    
    func addImage(image: UIImage) {
        self.setImage(image, for: .normal)
    }
}
