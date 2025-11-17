//
//  ProfileView.swift
//  RyuKoi
//
//  Created by R M on 11/16/25.
//

import UIKit

class ProfileView: UIView {
    var image: UIImageView!
    var name: UILabel!
    var email: UILabel!
    var editBtn: UIButton!
    var preferences: UITableView!
    var notificationTableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 1.0, green: 0.953, blue: 0.851, alpha: 1.0)
        setupImage()
        setupName()
        setupEmail()
        setupPreferences()
        setupEditBtn()
        setupNotificationTableView()
        initConstraints()
    }
    
    func setupImage(){
        image = UIImageView()
        image.image = UIImage(systemName: "photo.in.cirlce")
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(image)
    }
    
    func setupName(){
        name = UILabel()
        name.text = "Name"
        name.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        name.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(name)
    }
    
    func setupEmail(){
        email = UILabel()
        email.text = "Email"
        email.font = UIFont.systemFont(ofSize: 17)
        email.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(email)
    }
    
    func setupPreferences(){
        preferences = UITableView()
        preferences.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(preferences)
    }
    
    func setupEditBtn() {
        editBtn = UIButton()
        editBtn.setTitle("Edit", for: .normal)
        editBtn.setTitleColor(.white, for: .normal)
        editBtn.backgroundColor = UIColor(red: 59/255, green: 9/255, blue: 24/255, alpha: 1.0)
        editBtn.layer.cornerRadius = 5
        editBtn.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(editBtn)
    }
    
    func setupNotificationTableView(){
        notificationTableView = UITableView()
        
        notificationTableView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(notificationTableView)
    }
    
    func initConstraints() {
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            image.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: 250),
            image.heightAnchor.constraint(equalToConstant: 250),
            
            name.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            name.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            email.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 20),
            email.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            preferences.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 10),
            preferences.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            preferences.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            editBtn.topAnchor.constraint(equalTo: preferences.bottomAnchor, constant: 10),
            preferences.bottomAnchor.constraint(equalTo: editBtn.topAnchor, constant: -10),
            editBtn.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            notificationTableView.topAnchor.constraint(equalTo: editBtn.bottomAnchor, constant: 10),
            notificationTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            notificationTableView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            notificationTableView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
