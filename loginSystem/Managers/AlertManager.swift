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
        showBasicAlert(on: vc, with: "Invalid Email", message: "This email is invalid. Please enter a valid email.")
    }
    
    public static func showInvalidPasswordlAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Invalid Password", message: "This password is invalid. Please try again.")
    }
    
    public static func showInvalidUsernameAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Invalid Username", message: "There is no user with this username. Please try again.")
    }
}

// MARK: - Registration Errors
extension AlertManager {
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Unknown Registration Error", message: nil)
    }
    
    public static func showRegistrationErrorAlert(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, with: "Unknown Registration Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Log In Errors
extension AlertManager {
    public static func showSignInErrorAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Unknown Sign In Error", message: nil)
    }
    
    public static func showSignInErrorAlert(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, with: "Sign In Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Log Out Errors
extension AlertManager {
    public static func showLogOutErrorAlert(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, with: "Unknown Log Out Error", message: "\(error.localizedDescription)")
    }
}

//MARK: - Forgot Password Errors
extension AlertManager {
    public static func showPasswordResetSent(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Password Reset Sent", message: nil)
    }
    
    public static func showErrorSendingPasswordReset(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, with: "Error Sending Password Reset", message: "\(error.localizedDescription)")
    }
}

//MARK: - Fetching User Errors
extension AlertManager {
    public static func showUnknownFetchingUserError(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Unknown Fetching User Error", message: nil)
    }
    
    public static func showFetchingUserError(on vc: UIViewController, error: Error) {
        showBasicAlert(on: vc, with: "Error Fetching User", message: "\(error.localizedDescription)")
    }
}
