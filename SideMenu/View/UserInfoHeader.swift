//
//  UserInfoHeader.swift
//  SideMenu
//
//  Created by Jimmy Leu on 2019/6/4.
//  Copyright © 2019 Jimmy Leu. All rights reserved.
//

import UIKit

class UserInfoHeader: UIImageView{
    
    // MARK: - Properties
    let profileImageView: UIImageView  = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = #imageLiteral(resourceName: "ironman")
        
        return iv
        
    }()
    
    let usernameLabel:UILabel = {
        let label = UILabel()
        label.text = "Tony Stark"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tony Stark"
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "tony.stark@gmail.com"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // profile image
        let profileImageDimension: CGFloat = 60
        addSubview(profileImageView)
        profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: profileImageDimension).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: profileImageDimension).isActive = true
        profileImageView.layer.cornerRadius = profileImageDimension / 2
        
        // username Label
        addSubview(usernameLabel)
        usernameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor, constant: -10).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 12).isActive = true
        
        addSubview(emailLabel)
        emailLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor, constant: 10).isActive = true
        emailLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 12).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
