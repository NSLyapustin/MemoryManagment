//
//  StartViewController.swift
//  StartViewController
//
//  Created by Никита Ляпустин on 14.11.2021.
//

import UIKit

class StartViewController: UIViewController {

    // MARK: - Instance Properties
    
    // MARK: -
    
    private let showDogsButton: UIButton = {
        let button = UIButton()
        button.setTitle("show me dog", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.setTitleColor(.tintColor, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(onShowDogsButtonTouchUpInside), for: .touchUpInside)
        
        return button
    }()
    
    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupButton()
    }
    
    // MARK: - Instance Methods
    
    // MARK: -
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupButton() {
        view.addSubview(showDogsButton)
        NSLayoutConstraint.activate([
            showDogsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showDogsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc private func onShowDogsButtonTouchUpInside() {
        let dogsModuleBuilder = DogsModuleBuilder()

        navigationController?.pushViewController(dogsModuleBuilder.build(), animated: true)
    }
}

