//
//  HomeViewController.swift
//  viewcode
//
//  Created by Jonatha Pereira Lima  on 15/03/18.
//  Copyright © 2018 Concrete Solutions. All rights reserved.
//

import UIKit
import PureLayout

class HomeViewController: UIViewController {

    var homeView: HomeView!
    
    let users: [User] = {
        let jonathaUser = User(name: "Jonatha Lima", username: "@jlima", resume: "iOS and Backend Developer. Do what you have to do!")
        
        let heldonUser = User(name: "Heldon Mires", username: "@hmires", resume: "I don't know what to do")
        
        let anaUser = User(name: "Ana Noca", username: "@anoca", resume: "Hey whats up guys")
        
        return [jonathaUser, heldonUser, anaUser]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView = HomeView(frame: .zero)
        homeView.tableView.dataSource = self
        homeView.tableView.delegate = self
        homeView.tableView.register(SimpleUserCell.self, forCellReuseIdentifier: homeView.cellId)
        homeView.tableView.register(SimpleUserHeader.self, forCellReuseIdentifier: homeView.headerId)
        homeView.tableView.register(SimpleUserFooter.self, forCellReuseIdentifier: homeView.footerId)
        
        self.view.addSubview(homeView)
        
        homeView.autoPinEdgesToSuperviewEdges(with: .zero)
        
    }

}

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: homeView.cellId, for: indexPath) as! SimpleUserCell
        cell.nameLabel.text = users[indexPath.row].name
        cell.usernameLabel.text = users[indexPath.row].username
        cell.resumeLabel.text = users[indexPath.row].resume
        return cell

    }
    
}

extension HomeViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: homeView.headerId) as? SimpleUserHeader {
            cell.titleLabel.text = "who to follow".uppercased()
            return cell
        }
        
        return UIView()
        
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: homeView.footerId) as? SimpleUserFooter {
            return cell
        }
        
        return UIView()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    
}

