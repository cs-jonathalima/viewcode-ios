//
//  ProfileView.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 14/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit
import PureLayout

class ProfileView: UIView {

    var shouldSetupConstraint = true
    
    var bannerView: UIImageView!
    var profileView: UIImageView!
    var segmentedControl: UISegmentedControl!
    
    let screenSize = UIScreen.main.bounds
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        
        if shouldSetupConstraint {
            
            let edgeInsets: CGFloat = 20.0
            let centerOffset: CGFloat = 62.0
            
            bannerView.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .bottom)
            
            profileView.autoPinEdge(toSuperviewEdge: .left, withInset: edgeInsets)
            profileView.autoPinEdge(.bottom, to: .bottom, of: bannerView, withOffset: centerOffset)
            
            segmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: 30, relation: .equal)
            segmentedControl.autoPinEdge(toSuperviewEdge: .left, withInset: edgeInsets, relation: .equal)
            segmentedControl.autoPinEdge(toSuperviewEdge: .right, withInset: edgeInsets, relation: .equal)
            
            shouldSetupConstraint = false
        }
        
        super.updateConstraints()
        
    }

}

// MARK: -
private extension ProfileView {
    
    func setupUI() {
        
        backgroundColor = .white
        
        bannerView = UIImageView(frame: .zero)
        bannerView.backgroundColor = .gray
        
        bannerView.autoSetDimension(.height, toSize: screenSize.width / 3)
        
        self.addSubview(bannerView)
        
        profileView = UIImageView(frame: .zero)
        profileView.backgroundColor = .gray
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.layer.borderWidth = 1.0
        profileView.layer.cornerRadius = 5.0
        
        profileView.autoSetDimension(.width, toSize: 124.0)
        profileView.autoSetDimension(.height, toSize: 124.0)
        
        self.addSubview(profileView)
        
        segmentedControl = UISegmentedControl(items: ["Tweets","Media","Likes"])

        
        self.addSubview(segmentedControl)
        
    }
    
}
