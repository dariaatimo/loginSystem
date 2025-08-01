//
//  LSWebViewerController.swift
//  loginSystem
//
//  Created by Daria Timoshevskaia on 01.08.25.
//

import UIKit
import WebKit

class LSWebViewerController: UIViewController {
    
    private let webView = WKWebView()
    private let url: String
    
    init(with url: String) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: url) else {
            self.dismiss(animated: true)
            return
        }
        
        self.webView.load(URLRequest(url: url))
        
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDone))
        
        view.addSubview(webView)
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    @objc private func didTapDone() {
        self.dismiss(animated: true, completion: nil)
    }
}
