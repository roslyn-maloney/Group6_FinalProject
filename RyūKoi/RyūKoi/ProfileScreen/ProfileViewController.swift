//
//  ProfileViewController.swift
//  RyuKoi
//
//  Created by R M on 11/16/25.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileScreen = ProfileView()
  
    override func loadView() {
        view = profileScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
