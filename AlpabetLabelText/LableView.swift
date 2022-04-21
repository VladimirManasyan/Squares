//
//  LableView.swift
//  AlpabetLabelText
//
//  Created by Shota Manasyan on 21.04.22.
//

import UIKit

class LableView: UIView {
    private var titleLabel: UILabel!
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func setTitle(_ text:  String) {
        titleLabel.text = text
    }
    
    private func commonInit() {
        initTitleLable()
        constructHierarchy()
        activatConstraints()
    }
}

extension LableView {
    
    private func initTitleLable() {
        titleLabel = UILabel()
        titleLabel.backgroundColor = .blue
        titleLabel.textAlignment = .center
        titleLabel.layer.cornerRadius = 10
        titleLabel.clipsToBounds = true
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func activatConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.heightAnchor.constraint(equalToConstant: 100),
            titleLabel.widthAnchor.constraint(equalToConstant: 100),
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor),
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func constructHierarchy() {
        addSubview(titleLabel)
    }
}
