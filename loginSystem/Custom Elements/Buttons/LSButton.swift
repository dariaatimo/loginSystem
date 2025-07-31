//
//  LSButton.swift
//  loginSystem
//
//  Created by Daria Timoshevskaia on 01.08.25.
//

import UIKit

class LSButton: UIButton {

    enum FontSize {
        case big
        case medium
        case small
    }
    
    init(title: String, hasBackground: Bool = false, fontSize: FontSize) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
        self.backgroundColor = hasBackground ? .systemBlue : .clear
        
        let titleColor: UIColor = hasBackground ? .white : .systemBlue
        self.setTitleColor(titleColor, for: .normal)
        
        switch fontSize {
        case .big:
            self.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        case .medium:
            self.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        case .small:
            self.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
