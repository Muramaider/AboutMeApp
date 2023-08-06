//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Aleksey Vinogradov on 06.08.2023.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var backgroundView: UIView!
    
    var showGreeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = showGreeting
        
        let colorTop = UIColor(red: 0.87, green: 0.37, blue: 0.54, alpha: 1).cgColor
        let colorBottom = UIColor(red: 0.97, green: 0.73, blue: 0.59, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.backgroundView.bounds
        gradientLayer.colors = [colorTop, colorBottom]
        self.backgroundView.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}
