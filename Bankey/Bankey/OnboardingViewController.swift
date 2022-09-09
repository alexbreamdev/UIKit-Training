//
//  OnboardingViewController.swift
//  Bankey
//
//  Created by Oleksii Leshchenko on 09.09.2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    let stackView = UIStackView()
    let imageView = UIImageView()
    let label = UILabel()
    var heroImageName: String
    var titleText: String
    
    init(heroImageName: String, titleText: String) {
        self.heroImageName = heroImageName
        self.titleText = titleText
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style(heroImageName: heroImageName, titleText: titleText)
        layout()
    }
}

extension OnboardingViewController {
    func style(heroImageName: String, titleText: String) {
        view.backgroundColor = .systemBackground
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        // image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: heroImageName)
        
        // label
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.text = titleText
        label.font = UIFont.preferredFont(forTextStyle: .title3)
    }
    
    func layout() {
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
    }
}
