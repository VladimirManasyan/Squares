//
//  ViewController.swift
//  AlpabetLabelText
//
//  Created by Vladimir Manasyan on 21.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    var horizontalSteck: UIStackView!
    var verticalStack: UIStackView!
    var labelViewA: LableView!
    var labelViewB: LableView!
    var labelViewC: LableView!
    var labelViewD: LableView!
    var labelViewE: LableView!
    var labelViewF: LableView!
    var labelViewG: LableView!
    var labelViewH: LableView!
    var labelViewI: LableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initLabelView()
        setupVerticalStack()
        setupHorizontalSlack()
        constructHierarchy()
        activatConstraints()
    }
    
    
}

extension ViewController {
    
    private func initLabelView() {
        
        labelViewA = LableView()
        labelViewB = LableView()
        labelViewC = LableView()
        labelViewD = LableView()
        labelViewE = LableView()
        labelViewF = LableView()
        labelViewG = LableView()
        labelViewH = LableView()
        labelViewI = LableView()
        labelViewA.setTitle("A")
        labelViewB.setTitle("B")
        labelViewC.setTitle("C")
        labelViewD.setTitle("D")
        labelViewE.setTitle("E")
        labelViewF.setTitle("F")
        labelViewG.setTitle("G")
        labelViewH.setTitle("H")
        labelViewI.setTitle("I")
        labelViewA.translatesAutoresizingMaskIntoConstraints = false
        labelViewB.translatesAutoresizingMaskIntoConstraints = false
        labelViewC.translatesAutoresizingMaskIntoConstraints = false
        labelViewD.translatesAutoresizingMaskIntoConstraints = false
        labelViewE.translatesAutoresizingMaskIntoConstraints = false
        labelViewF.translatesAutoresizingMaskIntoConstraints = false
        labelViewG.translatesAutoresizingMaskIntoConstraints = false
        labelViewH.translatesAutoresizingMaskIntoConstraints = false
        labelViewI.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupVerticalStack() {
        verticalStack = UIStackView()
        verticalStack.axis = .vertical
        verticalStack.distribution = .fillEqually
        verticalStack.spacing = 10
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupHorizontalSlack() {
        horizontalSteck = UIStackView()
        horizontalSteck.axis = .horizontal
        horizontalSteck.distribution = .fillEqually
        horizontalSteck.spacing = 10
        horizontalSteck.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func activatConstraints() {
        
        NSLayoutConstraint.activate([
            verticalStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            verticalStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25),
            verticalStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25)
        ])
    }
    
    private func constructHierarchy() {
        view.addSubview(verticalStack)
        verticalStack.addArrangedSubview(horizontalSteck)
        horizontalSteck.addArrangedSubview(labelViewA)
        horizontalSteck.addArrangedSubview(labelViewB)
        horizontalSteck.addArrangedSubview(labelViewC)
        
        setupHorizontalSlack()
        verticalStack.addArrangedSubview(horizontalSteck)
        horizontalSteck.addArrangedSubview(labelViewD)
        horizontalSteck.addArrangedSubview(labelViewE)
        horizontalSteck.addArrangedSubview(labelViewF)
        
        setupHorizontalSlack()
        verticalStack.addArrangedSubview(horizontalSteck)
        horizontalSteck.addArrangedSubview(labelViewG)
        horizontalSteck.addArrangedSubview(labelViewH)
        horizontalSteck.addArrangedSubview(labelViewI)
   }
}
