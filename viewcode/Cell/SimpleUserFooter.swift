//
//  SimpleUserFooter.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 16/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit

class SimpleUserFooter: UITableViewCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(red: 61/255, green: 167/255, blue: 244/255, alpha: 1)
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

private extension SimpleUserFooter {
    
    func setupUI() {
        
        backgroundColor = .white
        
        self.addSubview(titleLabel)
        
        titleLabel.autoPinEdgesToSuperviewMargins()
        
    }
    
}
