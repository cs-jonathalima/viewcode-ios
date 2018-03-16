//
//  SimpleUserCell.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 16/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit

class SimpleUserCell: UITableViewCell {
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5.0
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()

    let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .lightGray
        return label
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        let twitterColor = UIColor(red: 61/255, green: 167/255, blue: 244/255, alpha: 1)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = twitterColor.cgColor
        button.setTitle("Follow", for: .normal)
        button.setTitleColor(twitterColor, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setImage(UIImage(named: "twitter_logo"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        return button
    }()
    
    let resumeLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.backgroundColor = .clear
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension SimpleUserCell {
    
    func setupUI() {
        
        backgroundColor = .white
        
        self.addSubview(profileImageView)
        self.addSubview(nameLabel)
        self.addSubview(followButton)
        self.addSubview(usernameLabel)
        self.addSubview(resumeLabel)
        
        profileImageView.autoSetDimension(.height, toSize: 50)
        profileImageView.autoSetDimension(.width, toSize: 50)
        profileImageView.autoPinEdge(toSuperviewEdge: .left, withInset: 15.0)
        profileImageView.autoPinEdge(toSuperviewEdge: .top, withInset: 15.0)
        
        nameLabel.autoSetDimension(.height, toSize: 24)
        nameLabel.autoPinEdge(.left, to: .right, of: profileImageView, withOffset: 10.0)
        nameLabel.autoPinEdge(.top, to: .top, of: profileImageView)
        nameLabel.autoPinEdge(.right, to: .left, of: followButton, withOffset: -10.0)
        
        followButton.autoSetDimension(.height, toSize: 35)
        followButton.autoSetDimension(.width, toSize: 110)
        followButton.autoPinEdge(.top, to: .top, of: nameLabel)
        followButton.autoPinEdge(toSuperviewEdge: .right, withInset: 15.0)
        
        usernameLabel.autoSetDimension(.height, toSize: 24)
        usernameLabel.autoPinEdge(.left, to: .left, of: nameLabel)
        usernameLabel.autoPinEdge(.top, to: .bottom, of: nameLabel, withOffset: -2.0)
        usernameLabel.autoPinEdge(.right, to: .right, of: nameLabel)
        
        resumeLabel.autoPinEdge(.left, to: .left, of: usernameLabel)
        resumeLabel.autoPinEdge(.top, to: .bottom, of: usernameLabel, withOffset: 2.0)
        resumeLabel.autoPinEdge(toSuperviewEdge: .right, withInset: 15.0)
        resumeLabel.autoPinEdge(toSuperviewMargin: .bottom, relation: .greaterThanOrEqual)
        
    }
    
}
