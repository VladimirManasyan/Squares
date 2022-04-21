//
//  ViewController.swift
//  AlpabetLabelText
//
//  Created by Shota Manasyan on 21.04.22.
//

import UIKit

class ViewController: UIViewController {
    
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
        constructHierarchy()
        activatConstraints()
    }
    
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
}

extension ViewController {
    
    private func activatConstraints() {
        NSLayoutConstraint.activate([
            labelViewA.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            labelViewA.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            labelViewB.centerXAnchor.constraint( equalTo: view.centerXAnchor),
            labelViewB.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
        ])
        
        NSLayoutConstraint.activate([
            labelViewC.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            labelViewC.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
        ])
        
        NSLayoutConstraint.activate([
            labelViewD.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            labelViewD.topAnchor.constraint(equalTo: labelViewC.topAnchor, constant: 120)
        ])
        
        NSLayoutConstraint.activate([
            labelViewE.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelViewE.topAnchor.constraint(equalTo: labelViewB.topAnchor, constant: 120)
        ])
        
        NSLayoutConstraint.activate([
            labelViewF.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            labelViewF.topAnchor.constraint(equalTo: labelViewC.topAnchor, constant: 120)
        ])
        
        NSLayoutConstraint.activate([
            labelViewG.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            labelViewG.topAnchor.constraint(equalTo: labelViewD.topAnchor, constant: 120)
        ])
        
        NSLayoutConstraint.activate([
            labelViewH.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelViewH.topAnchor.constraint(equalTo: labelViewE.topAnchor, constant: 120)
        ])
        
        NSLayoutConstraint.activate([
            labelViewI.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            labelViewI.topAnchor.constraint(equalTo: labelViewF.topAnchor, constant: 120)
        ])
    }
    
    private func constructHierarchy() {
        view.addSubview(labelViewA)
        view.addSubview(labelViewB)
        view.addSubview(labelViewC)
        view.addSubview(labelViewD)
        view.addSubview(labelViewE)
        view.addSubview(labelViewF)
        view.addSubview(labelViewG)
        view.addSubview(labelViewH)
        view.addSubview(labelViewI)
    }
}
