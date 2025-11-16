//
//  LoginViewController.swift
//  RyuKoi
//
//  Created by R M on 11/16/25.
//

import UIKit

class LoginViewController: UIViewController {
    let loginScreen = LoginView()
    
    override func loadView() {
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "LogIn"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
