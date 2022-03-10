//
//  OnboardingThreeView.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import UIKit

class OnboardingThreeView: UIView {

    lazy var onboardingShopThreeImageView:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "shopThree")
        return image
    }()
    
    lazy var onboardingPathShopThreeImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "pathShopThree")
        return image
    }()
    
    lazy var onboardingThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Reflect and evaluate"
        label.textColor = UIColor(red: 39/255, green: 36/255, blue: 89/255, alpha: 1)
        label.font = UIFont(name: "Montserrat-SemiBold", size: 20)
        label.textAlignment = .center
        return label
    }()
    
    lazy var onboardingThreeSubtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "The enthusiasm to contribute ideas\n from customers, helping the service\n more and more developed."
        label.numberOfLines = 3
        label.textAlignment = .center
        label.textColor = UIColor(red: 117/255, green: 117/255, blue: 158/255, alpha: 1)
        label.font = UIFont(name: "Montserrat-Medium", size: 16)
        return label
    }()
    
    lazy var onboardingStepThreeImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "elipThree")
        return image
    }()
    
    lazy var onboardingThreeButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont(name: "Montserrat-Medium", size: 16)
        button.backgroundColor = UIColor(red: 243/255, green: 92/255, blue: 86/255, alpha: 1)
        button.setTitle("Get Started!", for: .normal)
        button.addTarget(self, action: #selector(onboardingButtonThreeAction), for: .touchUpInside)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubview(onboardingPathShopThreeImageView)
        self.addSubview(onboardingShopThreeImageView)
        self.addSubview(onboardingThreeTitleLabel)
        self.addSubview(onboardingThreeSubtitleLabel)
        self.addSubview(onboardingStepThreeImage)
        self.addSubview(onboardingThreeButton)
        
        
        self.setUpOnboardingShopThreeImageViewConstraints()
        self.setUpPathOnboardingThreeImageViewConstraints()
        self.setUponboardingThreeTitleLabelViewConstraints()
        self.setUpOnboardingThreeSubtitleLabelViewConstraints()
        self.setUpOnboardingStepThreeImageViewConstraints()
        self.setUpOnboardingThreeButtonViewConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func onboardingButtonThreeAction(sender: UIButton!) {
        debugPrint("Olá tudo bem")
    }
    
    
    
    private func setUpPathOnboardingThreeImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingPathShopThreeImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            self.onboardingPathShopThreeImageView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingPathShopThreeImageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor)
        ])
    }
    
    private func setUpOnboardingShopThreeImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingShopThreeImageView.topAnchor.constraint(equalTo: self.onboardingPathShopThreeImageView.topAnchor, constant: 70),
            self.onboardingShopThreeImageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingShopThreeImageView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingShopThreeImageView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }
    
    private func setUponboardingThreeTitleLabelViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingThreeTitleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingThreeTitleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingThreeTitleLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingThreeTitleLabel.topAnchor.constraint(equalTo: self.onboardingShopThreeImageView.bottomAnchor,constant: 40)
        ])
    }
    
    private func setUpOnboardingThreeSubtitleLabelViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingThreeSubtitleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingThreeSubtitleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingThreeSubtitleLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingThreeSubtitleLabel.topAnchor.constraint(equalTo: self.onboardingThreeTitleLabel.bottomAnchor,constant: 20)
        ])
        
    }
    
    private func setUpOnboardingStepThreeImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingStepThreeImage.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingStepThreeImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingStepThreeImage.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingStepThreeImage.topAnchor.constraint(equalTo: self.onboardingThreeSubtitleLabel.bottomAnchor,constant: 40)
        ])
        
    }
    
    private func setUpOnboardingThreeButtonViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingThreeButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant: -24),
            self.onboardingThreeButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,constant: 24),
            self.onboardingThreeButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingThreeButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -20)
        ])
        
    }
    

}
