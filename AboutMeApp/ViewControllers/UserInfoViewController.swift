//
//  userInfoViewController.swift
//  AboutMeApp
//
//  Created by Aleksey Vinogradov on 09.08.2023.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet var userAvatar: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var userSurname: UILabel!
    @IBOutlet var userAge: UILabel!
    @IBOutlet var userWorkplace: UILabel!
    @IBOutlet var userPosition: UILabel!

    var user: User!
    
    override func viewDidLoad() {
        self.title = "\(user.person.name) \(user.person.surname)"
        userName.text = user.person.name
        userSurname.text = user.person.surname
        userAge.text = String(user.person.age)
        userWorkplace.text = user.person.workplace
        userPosition.text = user.person.position
        userAvatar.image = user.person.avatar
        
        userAvatar.layer.cornerRadius = userAvatar.frame.width / 2
        view.addVerticalGradientLayer(
            topColor: Constants.primaryColor,
            bottomColor: Constants.secondaryColor
        )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bioVC = segue.destination as? UserBioViewController {
            bioVC.user = user
        }
    }
}

