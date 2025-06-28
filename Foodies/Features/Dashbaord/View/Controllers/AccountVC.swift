//
//  AccountVC.swift
//  Foodies
//
//  Created by User on 28/06/25.
//

import UIKit

class AccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func didTapSignOutBtn(_ sender: Any) {
        goToLoginScreen()
    }
  
    func goToLoginScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let LoginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? UIViewController,
              let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
              let window = sceneDelegate.window {
               
            UIView.transition(with: window, duration: 0.6, options: .transitionFlipFromBottom, animations: {
                   window.rootViewController = LoginVC
               }, completion: nil)
           }
       
    }

}
