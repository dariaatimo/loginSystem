//
//  AlertManager.swift
//  loginSystem
//
//  Created by Daria Timoshevskaia on 04.08.25.
//

import UIKit

class AlertManager {
    private static func showBasicAlert(on vc: UIViewController, with title: String, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            vc.present(alert, animated: true)
        }
    }
}

// MARK: - Show Validation Alerts
extension AlertManager {
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Invalid email", message: "This email is invalid. Please enter a valid email.")
    }
}
