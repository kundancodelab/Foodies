//
//  SignUpVC.swift
//  Foodies
//
//  Created by User on 15/06/25.
//

import UIKit

class SignUpVC: UIViewController {
    @IBOutlet  weak var containerView: UIView!{
        didSet {
            containerView.layer.cornerRadius = 20
            containerView.layer.masksToBounds = true
        }
        
    }
    
    // MARK: Outlets
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: Actions
    @IBAction func didTapSignUpBtn(_ sender: Any) {
    }
    
    @IBAction func didTapBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
