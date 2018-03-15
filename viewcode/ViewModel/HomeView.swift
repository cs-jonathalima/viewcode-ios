//
//  HomeView.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 15/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit
import PureLayout

class HomeView: UIView {
    
    let cellId = "cellId"
    var shouldSetupConstraint = true
    
    var tableView: UITableView!
    var tabBar: UITabBar!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        
        if shouldSetupConstraint {
            
            tableView.autoPinEdgesToSuperviewEdges(with: .zero)
            shouldSetupConstraint = false
            
        }
        
        super.updateConstraints()
    }
    
}

// MARK: -
private extension HomeView {
    
    func setupUI() {
        
        self.backgroundColor = .white
        
        tableView = UITableView(frame: .zero)
        tableView.backgroundColor = .white
        
        self.addSubview(tableView)
        
    }
    
}
