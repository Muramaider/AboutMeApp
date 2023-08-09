//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Aleksey Vinogradov on 06.08.2023.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(user.login)!\nMy name is \(user.person.name)!"
        
        view.addVerticalGradientLayer(
            topColor: Constants.primaryColor,
            bottomColor: Constants.secondaryColor
        )
    }
    
}
