//
//  HomeViewScreen.swift
//  MusicViewCode
//
//  Created by Michelli Cristina de Paulo Lima on 29/05/22.
//

import UIKit

class HomeViewScreen: UIView {
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.separatorStyle = .none
        table.tableFooterView = UIView()
        table.showsVerticalScrollIndicator = false
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(CardViewTableViewCell.self, forCellReuseIdentifier: CardViewTableViewCell.identifier)
        return table
    }()
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubView()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


extension HomeViewScreen {
    
    private func addSubView() {
        self.addSubview(tableView)
    }
    
    private func setUpConstraints() {
        self.tableView.pin(to: self)
    }
}
