//
//  ViewController.swift
//  LogIn+SignUp
//
//  Created by prince on 2020/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabelColor: UILabel!
    @IBOutlet weak var segmentedControlState: UISegmentedControl!
    
    var errorTitle = ""
    var errorMessage = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkLabelColor.textColor = .gray
        checkTextField.backgroundColor = .gray
        checkTextField.isUserInteractionEnabled = false
//        segmentedControlState.backgroundColor = .white
        segmentedControlState.selectedSegmentTintColor = .black
        segmentedControlState.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)
        
        users.append(appworks_school)
    }

    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkLabelColor.textColor = .gray
            checkTextField.backgroundColor = .gray
            checkTextField.isUserInteractionEnabled = false
            checkTextField.text = ""
            
            
        } else if sender.selectedSegmentIndex == 1 {
            checkLabelColor.textColor = .black
            checkTextField.backgroundColor = .white
            checkTextField.isUserInteractionEnabled = true
        }
    }
    
    @IBAction func buttonTapped() {
        let inputAccount = accountTextField.text
        let inputPassword = passwordTextField.text
        let inputCheck = checkTextField.text
        
        if segmentedControlState.selectedSegmentIndex == 0 {
            
            if inputAccount == users[0].account && inputPassword == users[0].password {
                showAlert(title: "Welcome 😊", message: "\(users[0].account)")
            } else if inputAccount == "" && inputPassword == "" {
                showAlert(title: "Error", message: "Account and password should not be empty.")
            } else if inputAccount == "" {
                showAlert(title: "Error", message: "Account should not be empty.")
            } else if inputPassword == "" {
                showAlert(title: "Error", message: "Password should not be empty.")
            } else {
                showAlert(title: "Error", message: "Login fail")
            }
            
        } else if segmentedControlState.selectedSegmentIndex == 1 {
            
            guard inputAccount != "" else {
                showAlert(title: "Error", message: "Account should not be empty.")
                return
            }
            guard inputPassword != "" else {
                showAlert(title: "Error", message: "Password should not be empty.")
                return
            }
            guard inputCheck != "" else {
                showAlert(title: "Error", message: "Check password should not be empty.")
                return
            }
            guard inputCheck == inputPassword else {
                showAlert(title: "Error", message: "Check password should be same.")
                return
            }
            guard inputAccount != users[0].account else {
                showAlert(title: "Error", message: "You've already signed up.")
                return
            }
            
            showAlert(title: "Signed up successfully", message: "Please go to login")
            
        }
        
        
    }
    
    func showAlert(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        
        let alert = UIAlertController(title: errorTitle, message: errorMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}


struct User {
    var account: String
    var password: String
}

var users = [User]()
let appworks_school = User(account: "appworks_school@gmail.com", password: "1234")
