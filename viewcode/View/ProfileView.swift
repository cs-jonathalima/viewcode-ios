//
//  ProfileView.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 14/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit

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
            shouldSetupConstraint = false
        }
        super.updateConstraints()
    }

}

// MARK: -
private extension ProfileView {
    
    func setupUI() {
        self.bannerView = UIImageView(frame: .zero)
        self.bannerView.backgroundColor = .gray
        self.addSubview(bannerView)
        
        self.profileView = UIView(frame: .zero)
        
    }
    
}
