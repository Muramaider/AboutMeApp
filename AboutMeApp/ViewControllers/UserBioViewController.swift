//
//  UserBioViewController.swift
//  AboutMeApp
//
//  Created by Aleksey Vinogradov on 09.08.2023.
//

import UIKit

final class UserBioViewController: UIViewController {
    
    @IBOutlet var userBio: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        self.title = "\(user.person.name) \(user.person.surname) Bio"
        userBio.text = user.person.bio
        
        view.addVerticalGradientLayer(
            topColor: Constants.primaryColor,
            bottomColor: Constants.secondaryColor
        )
    }
}
