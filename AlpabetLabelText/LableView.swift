//
//  LableView.swift
//  AlpabetLabelText
//
//  Created by Vladimir Manasyan on 21.04.22.
//

import UIKit
import AudioToolbox

class LableView: UIView {
    private var titleButton: UIButton!
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func setTitle(_ text:  String) {
        titleButton.setTitle(text, for: .normal)
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        print("Sxmvav")
        AudioServicesPlaySystemSound(1036)
    }
    
    private func commonInit() {
        initTitleLable()
        constructHierarchy()
        activatConstraints()
    }
}

extension LableView {
    
    private func initTitleLable() {
        titleButton = UIButton()
        titleButton.backgroundColor = .blue
        titleButton.layer.cornerRadius = 10
        titleButton.clipsToBounds = true
        titleButton.setTitleColor(.gray, for: .normal)
        titleButton.setTitleColor(.red, for: .highlighted)
        titleButton.titleLabel?.font = .systemFont(ofSize: 50)
        titleButton.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
        titleButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func activatConstraints() {
        NSLayoutConstraint.activate([
//            titleButton.heightAnchor.constraint(equalToConstant: 100),
//            titleButton.widthAnchor.constraint(equalToConstant: 100),
            titleButton.rightAnchor.constraint(equalTo: rightAnchor),
            titleButton.leftAnchor.constraint(equalTo: leftAnchor),
            titleButton.topAnchor.constraint(equalTo: topAnchor),
            titleButton.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func constructHierarchy() {
        addSubview(titleButton)
    }
}
