//
//  AuthHeaderView.swift
//  loginSystem
//
//  Created by Daria Timoshevskaia on 31.07.25.
//

import UIKit

class AuthHeaderView: UIView {

    // MARK: - UI Components
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "person.circle")
        imageView.tintColor = .systemIndigo
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.text = "Error"
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.text = "Something went wrong"
        return label
    }()
    
    // MARK: - LifeCycle
    init(title: String, subtitle: String) {
        super.init(frame: .zero)
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
        
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        self.addSubview(logoImageView)
        self.addSubview(titleLabel)
        self.addSubview(subtitleLabel)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            self.logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoImageView.widthAnchor.constraint(equalToConstant: 90),
            self.logoImageView.heightAnchor.constraint(equalToConstant: 90),
            
            self.titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 19),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            self.subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 19),
            self.subtitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.subtitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
}
