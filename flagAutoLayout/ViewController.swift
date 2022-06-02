//
//  ViewController.swift
//  flagAutoLayout
//
//  Created by Aidar on 1/6/22.
//

import UIKit

class ViewController: UIViewController {
    
 private lazy var viewRed: UIView = {
        let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .red
    return view
    }()
    private lazy var viewWhite: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var viewWhite1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var viewGreece: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        return view
    }()
    private lazy var viewGrecceLine1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    private lazy var viewGrecceLine2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    private lazy var viewGrecceLine3: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private lazy var viewGrecceLine4: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private lazy var viewRectangle: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        return view
    }()
    private lazy var viewRecnagleLine1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private lazy var viewRecnagleLine2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private lazy var buttonNext: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Next", for: .normal)
        view.setTitleColor(UIColor.red, for: .normal)
        view.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        view.backgroundColor = .cyan
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // flag Sweden
        view.addSubview(viewRed)
        view.addSubview(viewWhite)
        view.addSubview(viewWhite1)
        view.addSubview(viewGreece)
        view.addSubview(viewGrecceLine1)
        view.addSubview(viewGrecceLine2)
        view.addSubview(viewGrecceLine3)
        view.addSubview(viewGrecceLine4)
        view.addSubview(viewRectangle)
        view.addSubview(viewRecnagleLine1)
        view.addSubview(viewRecnagleLine2)
        
        view.addSubview(buttonNext)
        // flag Greece
//        view.addSubview(viewGreece)
        setupAutoLayout()
        
        buttonNext.bottomAnchor.constraint(equalTo: viewRed.topAnchor, constant: 290).isActive = true
        buttonNext.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        buttonNext.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonNext.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    @objc func nextVC() {
        let nextVC = SecondViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
   

    func setupAutoLayout() {
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        viewRed.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        viewRed.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewRed.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        viewWhite.centerXAnchor.constraint(equalTo: viewRed.centerXAnchor, constant: 0).isActive = true
        viewWhite.centerYAnchor.constraint(equalTo: viewRed.centerYAnchor, constant: 0).isActive = true
        viewWhite.widthAnchor.constraint(equalToConstant: 40).isActive = true
        viewWhite.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        viewWhite1.centerXAnchor.constraint(equalTo: viewRed.centerXAnchor, constant: 0).isActive = true
        viewWhite1.centerYAnchor.constraint(equalTo: viewRed.centerYAnchor, constant: 0).isActive = true
        viewWhite1.widthAnchor.constraint(equalToConstant:100).isActive = true
        viewWhite1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        viewGreece.bottomAnchor.constraint(equalTo: viewRed.topAnchor, constant: -50).isActive = true
        viewGreece.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        viewGreece.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewGreece.heightAnchor.constraint(equalToConstant:200).isActive = true
        
        viewGrecceLine1.centerXAnchor.constraint(equalTo: viewGreece.centerXAnchor, constant: 0).isActive = true
        viewGrecceLine1.topAnchor.constraint(equalTo: viewGreece.topAnchor, constant: 22.5).isActive = true
        viewGrecceLine1.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewGrecceLine1.heightAnchor.constraint(equalToConstant: 22.5).isActive = true
        
        viewGrecceLine2.centerXAnchor.constraint(equalTo: viewGrecceLine1.centerXAnchor, constant: 0).isActive = true
        viewGrecceLine2.bottomAnchor.constraint(equalTo: viewGrecceLine1.bottomAnchor, constant: 45).isActive = true
        viewGrecceLine2.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewGrecceLine2.heightAnchor.constraint(equalToConstant: 22.5).isActive = true
        
        viewGrecceLine3.centerXAnchor.constraint(equalTo: viewGrecceLine2.centerXAnchor, constant: 0).isActive = true
        viewGrecceLine3.bottomAnchor.constraint(equalTo: viewGrecceLine2.bottomAnchor, constant: 45).isActive = true
        viewGrecceLine3.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewGrecceLine3.heightAnchor.constraint(equalToConstant: 22.5).isActive = true
        
        viewGrecceLine4.centerXAnchor.constraint(equalTo: viewGrecceLine3.centerXAnchor, constant: 0).isActive = true
        viewGrecceLine4.bottomAnchor.constraint(equalTo: viewGrecceLine3.bottomAnchor, constant: 45).isActive = true
        viewGrecceLine4.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewGrecceLine4.heightAnchor.constraint(equalToConstant: 22.5).isActive = true
        
        viewRectangle.leadingAnchor.constraint(equalTo: viewGreece.leadingAnchor, constant: 0).isActive = true
        viewRectangle.topAnchor.constraint(equalTo: viewGreece.topAnchor, constant: 0).isActive = true
        viewRectangle.widthAnchor.constraint(equalToConstant: 150).isActive = true
        viewRectangle.heightAnchor.constraint(equalToConstant:100).isActive = true
        
        viewRecnagleLine1.centerXAnchor.constraint(equalTo: viewRectangle.centerXAnchor, constant: 0).isActive = true
        viewRecnagleLine1.centerYAnchor.constraint(equalTo: viewRectangle.centerYAnchor, constant: 6).isActive = true
        viewRecnagleLine1.widthAnchor.constraint(equalToConstant: 150).isActive = true
        viewRecnagleLine1.heightAnchor.constraint(equalToConstant: 22.5).isActive = true
        
        viewRecnagleLine2.centerXAnchor.constraint(equalTo: viewRectangle.centerXAnchor, constant: 0).isActive = true
        viewRecnagleLine2.centerYAnchor.constraint(equalTo: viewRectangle.centerYAnchor, constant: 6).isActive = true
        viewRecnagleLine2.widthAnchor.constraint(equalToConstant: 22.5).isActive = true
        viewRecnagleLine2.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
}


}
