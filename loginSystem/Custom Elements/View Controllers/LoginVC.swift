//
//  LoginVC.swift
//  loginSystem
//
//  Created by Daria Timoshevskaia on 31.07.25.
//

import UIKit

class LoginVC: UIViewController {

    // MARK: - UI Components
    private let headerView = AuthHeaderView(title: "Sign In", subtitle: "Sign in to your account")
    private let usernameField = LSTextField(fieldType: .username)
    private let passwordField = LSTextField(fieldType: .password)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    

    private func setupUI() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(headerView)
        view.addSubview(usernameField)
        view.addSubview(passwordField)

        headerView.translatesAutoresizingMaskIntoConstraints = false
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 220),
            
            usernameField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 20),
            usernameField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            usernameField.heightAnchor.constraint(equalToConstant: 55),
            usernameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 20),
            passwordField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            passwordField.heightAnchor.constraint(equalToConstant: 55),
            passwordField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
        ])
    }

}
