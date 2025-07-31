//
//  LoginVC.swift
//  loginSystem
//
//  Created by Daria Timoshevskaia on 31.07.25.
//

import UIKit

class LoginVC: UIViewController {

    private let headerView = AuthHeaderView(title: "Sign In", subtitle: "Sign in to your account")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    

    private func setupUI() {
        view.addSubview(headerView)
        view.backgroundColor = .systemBackground
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 270),
        ])
    }

}
