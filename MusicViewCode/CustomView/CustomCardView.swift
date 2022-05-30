//
//  CustomCardView.swift
//  MusicViewCode
//
//  Created by Michelli Cristina de Paulo Lima on 30/05/22.
//

import UIKit

enum ViewMode {
    case full
    case card
}

class CustomCardView: UIView {
    
    var cmode:ViewMode?
    var containerLeadingConstriants:NSLayoutConstraint?
    var containerTopConstriants:NSLayoutConstraint?
    var containerTrailingConstriants:NSLayoutConstraint?
    var containerBottomConstriants:NSLayoutConstraint?
    var dataModel: CardViewModel?
    
    
}
