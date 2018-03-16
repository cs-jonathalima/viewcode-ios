//
//  WordCell.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 16/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit
import PureLayout

class WordCell: UITableViewCell {
    
    let wordLabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
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

private extension WordCell {
    
    func setupUI() {
        
        self.addSubview(wordLabel)
        wordLabel.autoPinEdge(toSuperviewEdge: .left, withInset: 15)
        wordLabel.autoPinEdge(toSuperviewEdge: .top, withInset: 15)
        wordLabel.autoPinEdge(toSuperviewEdge: .right, withInset: 15)
        wordLabel.autoPinEdge(toSuperviewEdge: .bottom, withInset: 15)
        
    }
    
}
