//
//  UserSimpleHeaderCell.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 16/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit

class SimpleUserHeader: UITableViewCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        return label
    }()
    
    let separatorLine: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.4)
        return view
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension SimpleUserHeader {
    
    func setupUI() {

        backgroundColor = .white
        
        self.addSubview(titleLabel)
        self.addSubview(separatorLine)
        
        titleLabel.autoPinEdgesToSuperviewMargins()
        
        separatorLine.autoSetDimension(.height, toSize: 0.2)
        separatorLine.autoPinEdge(.left, to: .left, of: titleLabel)
        separatorLine.autoPinEdge(toSuperviewEdge: .right)
        separatorLine.autoPinEdge(toSuperviewEdge: .bottom)
        
    }
    
}
