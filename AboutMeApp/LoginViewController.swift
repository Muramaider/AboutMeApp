//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Aleksey Vinogradov on 06.08.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    private let user = "User"
    private let password = "11"
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user, userPasswordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let greetingVC = segue.destination as? GreetingViewController
        greetingVC?.showGreeting = "Welcome, \(user)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func forgetUsernameButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(user) 😅")
    }
    
    @IBAction func forgetPasswordButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 🥲")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        removeData()
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.removeData()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func removeData() {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
}
