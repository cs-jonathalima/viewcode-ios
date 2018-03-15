//
//  ProfileViewController.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 14/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit
import PureLayout

class ProfileViewController: UIViewController {

    var profileView: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileView = ProfileView(frame: .zero)
        
        self.view.addSubview(profileView)
        
        profileView.autoPinEdgesToSuperviewEdges(with: .zero)
    }

}

