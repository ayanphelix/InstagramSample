//
//  LoginRegisterVC.swift
//  InstagramSample
//
//  Created by Ayanbola Felix on 01/08/2018.
//  Copyright © 2018 Ayanbola Felix. All rights reserved.
//

import UIKit

class LoginRegisterVC: UIViewController {
    
    let profileImageView : UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "placeholder")
        imgView.contentMode = .scaleAspectFill
        imgView.layer.masksToBounds = true
        imgView.layer.cornerRadius = 60
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    let inputContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let nameSeperatorView : UIView = {
        let view = UIView()
        view.backgroundColor = Service.shared.seperatorViewColor
        return view
    }()
    
    let emailTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "email"
        tf.keyboardType = .emailAddress
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let emailSeperatorView : UIView = {
        let view = UIView()
        view.backgroundColor = Service.shared.seperatorViewColor
        return view
    }()
    
    let passwordTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "password"
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let loginRegisterButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = Service.shared.registerButtonBGC
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Service.shared.mainBgColor
        setUpView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    private func setUpView(){
        
        view.addSubview(profileImageView)
        view.addSubview(inputContainerView)
        inputContainerView.addSubview(nameTextField)
        inputContainerView.addSubview(nameSeperatorView)
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeperatorView)
        inputContainerView.addSubview(passwordTextField)
        view.addSubview(loginRegisterButton)
        
        
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.anchor(top: nil, leading: nil, trailing: nil, bottom: inputContainerView.topAnchor, padding: .init(top: 0, left: 0, bottom: 12, right: 0), size: .init(width: 120, height: 120))

        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        
        nameTextField.anchor(top: inputContainerView.topAnchor, leading: inputContainerView.leadingAnchor, trailing: inputContainerView.trailingAnchor, bottom: nil, padding: .init(top: 0, left: 12, bottom: 0, right: 0), size: .zero)
        nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        nameSeperatorView.anchor(top: nameTextField.bottomAnchor, leading: inputContainerView.leadingAnchor, trailing: inputContainerView.trailingAnchor, bottom: nil, padding: .init(), size: .init(width: 0, height: 0.5))
        
        emailTextField.anchor(top: nameSeperatorView.bottomAnchor, leading: inputContainerView.leadingAnchor, trailing: inputContainerView.trailingAnchor, bottom: nil, padding: .init(top: 0, left: 12, bottom: 0, right: 0), size: .zero)
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        emailSeperatorView.anchor(top: emailTextField.bottomAnchor, leading: inputContainerView.leadingAnchor, trailing: inputContainerView.trailingAnchor, bottom: nil, padding: .init(), size: .init(width: 0, height: 1))
        
        passwordTextField.anchor(top: emailTextField.bottomAnchor, leading: inputContainerView.leadingAnchor, trailing: inputContainerView.trailingAnchor, bottom: nil, padding: .init(top: 0, left: 12, bottom: 0, right: 0), size: .zero)
        passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        loginRegisterButton.anchor(top: inputContainerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 12, left: 12, bottom: 0, right: 12), size: .init(width: 0, height: 45))
    }
}














