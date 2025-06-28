//
//  LoginVC.swift
//  Foodies
//
//  Created by User on 15/06/25.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapSignInBtn(_ sender: Any) {
        // Load the UITabBarController
        let storyboard = UIStoryboard(name: "Dashbaord", bundle: nil)
           if let tabBarVC = storyboard.instantiateViewController(withIdentifier: "MainTabBarVC") as? UITabBarController,
              let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
              let window = sceneDelegate.window {
               
               UIView.transition(with: window, duration: 0.6, options: .transitionFlipFromRight, animations: {
                   window.rootViewController = tabBarVC
               }, completion: nil)
           }


    }
    

}
