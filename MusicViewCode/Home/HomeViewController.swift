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
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

