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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView = HomeView(frame: .zero)
        homeView.tableView.dataSource = self
        homeView.tableView.register(UITableViewCell.self, forCellReuseIdentifier: homeView.cellId)
        
        self.view.addSubview(homeView)
        
        homeView.autoPinEdgesToSuperviewEdges(with: .zero)
        
    }

}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: homeView.cellId, for: indexPath)
        cell.backgroundColor = .blue
        return cell

    }
    
}
