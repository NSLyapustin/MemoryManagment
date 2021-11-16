//
//  DogsViewController.swift
//  MemoryManagment
//
//  Created by Никита Ляпустин on 15.11.2021.
//

import Kingfisher
import UIKit

class DogsViewController: UIViewController {
    
    // MARK: - Instance Properties
    
    var output: DogsViewOutput
    
    // MARK: -
    
    private let dogImageView = UIImageView()
    
    // MARK: - Initializators
    
    init(output: DogsViewOutput) {
        self.output = output
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        output.viewDidLoadEvent()
    }
    
    // MARK: - Instance Methods
    
    // MARK: -
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(dogImageView)
        dogImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: dogImageView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: dogImageView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0),
            dogImageView.widthAnchor.constraint(equalToConstant: 300),
            dogImageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}

    // MARK: - DogsViewInput

extension DogsViewController: DogsViewInput {
    func display(dog: Dog) {
        dogImageView.kf.setImage(with: URL(string: dog.urlString)!)
    }
}
