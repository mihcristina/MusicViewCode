//
//  CardViewTableViewCell.swift
//  MusicViewCode
//
//  Created by Michelli Cristina de Paulo Lima on 29/05/22.
//

import UIKit

class CardViewTableViewCell: UITableViewCell {

    static let identifier:String = "CardViewTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
