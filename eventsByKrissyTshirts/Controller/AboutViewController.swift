//
//  AboutViewController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 4/8/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .blue
        return image
    }()
    
    lazy var glassView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.white.withAlphaComponent(1)
        label.font = UIFont(name: "SavoyeLetPlain", size: 30)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.layer.cornerRadius = 2
        label.clipsToBounds = true
        label.text = "Developed by:"
        return label
    }()
    
    lazy var developerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.white.withAlphaComponent(1)
        label.font = UIFont(name: "SavoyeLetPlain", size: 30)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.layer.cornerRadius = 2
        label.clipsToBounds = true
        label.text = "Nick's Development"
        return label
    }()
    
    lazy var emailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "email"), for: .normal)
        button.clipsToBounds = true
        button.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(handleEmail), for: .touchUpInside)
        return button
    }()
    
    lazy var instagramButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "instagram"), for: .normal)
        button.clipsToBounds = true
        button.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(handleInstagram), for: .touchUpInside)
        return button
    }()
    
    lazy var webButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "web"), for: .normal)
        button.clipsToBounds = true
        button.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(handleWeb), for: .touchUpInside)
        return button
    }()
    
    lazy var youtubeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "youtube"), for: .normal)
        button.clipsToBounds = true
        button.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(handleYoutube), for: .touchUpInside)
        return button
    }()
    
    lazy var rateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "rating"), for: .normal)
        button.clipsToBounds = true
        button.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(handleRate), for: .touchUpInside)
        return button
    }()
    
    lazy var copyRightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = UIColor.white.withAlphaComponent(1)
        label.font = UIFont(name: "SavoyeLetPlain", size: 20)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.layer.cornerRadius = 2
        label.clipsToBounds = true
        label.text = "Copyright Nicks Development 2018"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backgroundImageView)
        view.addSubview(glassView)
        view.addSubview(titleLabel)
        view.addSubview(developerLabel)
        view.addSubview(emailButton)
        view.addSubview(instagramButton)
        view.addSubview(webButton)
        view.addSubview(rateButton)
        view.addSubview(youtubeButton)
        view.addSubview(copyRightLabel)
        setupNavBar()
        setupView()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func setupNavBar(){
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.title = "About "
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont(name: "PartyLetPlain", size: 30)!]
    }
    
    fileprivate func setupView(){
        backgroundImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        backgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        glassView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        glassView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        glassView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        glassView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        glassView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        glassView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        developerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        developerLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        developerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        developerLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        developerLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        emailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailButton.topAnchor.constraint(equalTo: developerLabel.bottomAnchor, constant: 150).isActive = true
        emailButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        emailButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        rateButton.centerXAnchor.constraint(equalTo: emailButton.centerXAnchor).isActive = true
        rateButton.bottomAnchor.constraint(equalTo: emailButton.topAnchor, constant: -30).isActive = true
        rateButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        rateButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        webButton.centerYAnchor.constraint(equalTo: emailButton.centerYAnchor).isActive = true
        webButton.leftAnchor.constraint(equalTo: emailButton.rightAnchor, constant: 30).isActive = true
        webButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        webButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        instagramButton.centerYAnchor.constraint(equalTo: emailButton.centerYAnchor).isActive = true
        instagramButton.rightAnchor.constraint(equalTo: emailButton.leftAnchor, constant: -30).isActive = true
        instagramButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        instagramButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        youtubeButton.centerXAnchor.constraint(equalTo: emailButton.centerXAnchor).isActive = true
        youtubeButton.topAnchor.constraint(equalTo: emailButton.bottomAnchor, constant: 30).isActive = true
        youtubeButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        youtubeButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        copyRightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        copyRightLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        copyRightLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        copyRightLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    
    
    
}
   
    


