//
//  CardActionView.swift
//  MusicViewCode
//
//  Created by Michelli Cristina de Paulo Lima on 30/05/22.
//

import UIKit

class CardActionView: UIView {

    
    lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        return sv
    }()
    
    lazy var downloadView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var notInterestedView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var playView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var likeView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var moreView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var downloadButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 22.5
        btn.setBackgroundImage(UIImage(named: "download")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.clipsToBounds = true
        btn.tintColor = .white
        return btn
    }()
    
    lazy var notInterestedButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 22.5
        btn.setBackgroundImage(UIImage(named: "restrict")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.clipsToBounds = true
        btn.tintColor = .white
        return btn
    }()
    
    lazy var playButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 35
        btn.setBackgroundImage(UIImage(named: "playBtn")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.clipsToBounds = true
        btn.tintColor = .black
        return btn
    }()
    
    lazy var likeButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 22.5
        btn.setBackgroundImage(UIImage(named: "like")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.clipsToBounds = true
        btn.tintColor = .white
        return btn
    }()
    
    lazy var moreButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white.withAlphaComponent(0.3)
        btn.layer.cornerRadius = 22.5
        btn.setBackgroundImage(UIImage(named: "more")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.clipsToBounds = true
        btn.tintColor = .white
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.addSubview(self.stackView)
        self.stackView.addArrangedSubview(self.notInterestedView)
        self.stackView.addArrangedSubview(self.playView)
        self.stackView.addArrangedSubview(self.likeView)
        
        self.downloadView.addSubview(self.downloadButton)
        self.notInterestedView.addSubview(notInterestedButton)
        self.playView.addSubview(notInterestedView)
        self.likeView.addSubview(likeButton)
        self.moreView.addSubview(moreButton)
    }

    private func setupConstraints() {
        self.stackView.pin(to: self)
        NSLayoutConstraint.activate([
            
        ])
    }
    
}
