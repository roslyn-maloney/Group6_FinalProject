//
//  LoginView.swift
//  RyuKoi
//
//  Created by R M on 11/16/25.
//

import UIKit

class LoginView: UIView {
    var container: UIView!
    var email: UITextField!
    var password: UITextField!
    var signInBtn: UIButton!
    var loginBtn: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 1.0, green: 0.953, blue: 0.851, alpha: 1.0)
        setupContainer()
        setupEmail()
        setupPassword()
        setupSignInBtn()
        setupLoginBtn()
    }
    
    func setupContainer() {
        container = UIView()
        container.backgroundColor = UIColor(red: 255/255, green: 248/255, blue: 232/255, alpha: 1.0)
        container.layer.cornerRadius = 10
        container.translatesAutoresizingMaskIntoConstraints = false
        addSubview(container)
    }
    
    func setupEmail() {
        email = UITextField()
        email.placeholder = "Email"
        email.borderStyle = .roundedRect
        email.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(email)
    }
    
    func setupPassword() {
        password = UITextField()
        password.placeholder = "Password"
        password.borderStyle = .roundedRect
        password.isHidden = true
        password.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(password)
    }
    
    func setupSignInBtn() {
        signInBtn = UIButton()
        signInBtn.setTitle("Sign In", for: .normal)
        signInBtn.setTitleColor(.black, for: .normal)
        signInBtn.backgroundColor = .white
        signInBtn.layer.cornerRadius = 5
        signInBtn.backgroundColor = UIColor(red: 184/255, green: 57/255, blue: 14/255, alpha: 1)
        signInBtn.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(signInBtn)
    }
    
    func setupLoginBtn() {
        loginBtn = UIButton()
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.black, for: .normal)
        loginBtn.backgroundColor = .white
        loginBtn.layer.cornerRadius = 5
        loginBtn.backgroundColor = UIColor(red: 59/255, green: 9/255, blue: 24/255, alpha: 1.0)
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(loginBtn)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            container.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            container.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
           
            email.topAnchor.constraint(equalTo: container.bottomAnchor, constant: 16),
            email.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            email.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10),
            
            password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 16),
            password.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            password.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10),
            
            signInBtn.topAnchor.constraint(equalTo: container.bottomAnchor, constant: 16),
            signInBtn.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            signInBtn.widthAnchor.constraint(equalToConstant: 120),
            signInBtn.heightAnchor.constraint(equalToConstant: 44),
            
            loginBtn.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 32),
            loginBtn.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            loginBtn.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -50),
            loginBtn.widthAnchor.constraint(equalToConstant: 120),
            loginBtn.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
