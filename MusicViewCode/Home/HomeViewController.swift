//
//  ViewController.swift
//  MusicViewCode
//
//  Created by Michelli Cristina de Paulo Lima on 29/05/22.
//

import UIKit

class HomeViewController: UIViewController {

    var screen:HomeViewScreen?
    
    override func loadView() {
        self.screen = HomeViewScreen()
        self.screen?.configTableViewProtocols(delegate: self, dataSource: self)
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CardData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CardViewTableViewCell.identifier, for: indexPath) as? CardViewTableViewCell
        cell?.setupCell(data: CardData[indexPath.row])
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
}
