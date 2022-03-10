//
//  OnboardingTwoView.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import UIKit

class OnboardingTwoView: UIView {

    lazy var onboardingShopTwoImageView:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "shopTwo")
        return image
    }()
    
    lazy var onboardingPathShopTwoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "pathShopTwo")
        return image
    }()
    
    lazy var onboardingTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Fast shipping"
        label.textColor = UIColor(red: 39/255, green: 36/255, blue: 89/255, alpha: 1)
        label.font = UIFont(name: "Montserrat-SemiBold", size: 20)
        label.textAlignment = .center
        return label
    }()
    
    lazy var onboardingTwoSubtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Fast delivery is now simple and\n fast. Orders will be shipped quickly\n to you."
        label.numberOfLines = 3
        label.textAlignment = .center
        label.textColor = UIColor(red: 117/255, green: 117/255, blue: 158/255, alpha: 1)
        label.font = UIFont(name: "Montserrat-Medium", size: 16)
        return label
    }()
    
    lazy var onboardingStepTwoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "elipTwo")
        return image
    }()
    
    lazy var onboardingTwoButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont(name: "Montserrat-Medium", size: 16)
        button.backgroundColor = UIColor(red: 243/255, green: 92/255, blue: 86/255, alpha: 1)
        button.setTitle("Get Started!", for: .normal)
        button.addTarget(self, action: #selector(onboardingButtonTwoAction), for: .touchUpInside)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        
        return button
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        self.addSubview(onboardingPathShopTwoImageView)
        self.addSubview(onboardingShopTwoImageView)
        self.addSubview(onboardingTwoTitleLabel)
        self.addSubview(onboardingTwoSubtitleLabel)
        self.addSubview(onboardingStepTwoImage)
        self.addSubview(onboardingTwoButton)
        
        self.setUpOnboardingShopTwoImageViewConstraints()
        self.setUpPathOnboardingTwoImageViewConstraints()
        self.setUponboardingTwoTitleLabelViewConstraints()
        self.setUpOnboardingTwoSubtitleLabelViewConstraints()
        self.setUpOnboardingStepTwoImageViewConstraints()
        self.setUpOnboardingTwoButtonViewConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func onboardingButtonTwoAction(sender: UIButton!) {
        debugPrint("Olá tudo bem")
    }
    
    
    private func setUpPathOnboardingTwoImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingPathShopTwoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            self.onboardingPathShopTwoImageView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingPathShopTwoImageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor)
        ])
    }
    
    private func setUpOnboardingShopTwoImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingShopTwoImageView.topAnchor.constraint(equalTo: self.onboardingPathShopTwoImageView.topAnchor, constant: 70),
            self.onboardingShopTwoImageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingShopTwoImageView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingShopTwoImageView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }
    
    private func setUponboardingTwoTitleLabelViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingTwoTitleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingTwoTitleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingTwoTitleLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingTwoTitleLabel.topAnchor.constraint(equalTo: self.onboardingShopTwoImageView.bottomAnchor,constant: 40)
        ])
    }
    
    private func setUpOnboardingTwoSubtitleLabelViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingTwoSubtitleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingTwoSubtitleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingTwoSubtitleLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingTwoSubtitleLabel.topAnchor.constraint(equalTo: self.onboardingTwoTitleLabel.bottomAnchor,constant: 20)
        ])
        
    }
    
    private func setUpOnboardingStepTwoImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingStepTwoImage.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingStepTwoImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingStepTwoImage.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingStepTwoImage.topAnchor.constraint(equalTo: self.onboardingTwoSubtitleLabel.bottomAnchor,constant: 40)
        ])
        
    }
    
    private func setUpOnboardingTwoButtonViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingTwoButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant: -24),
            self.onboardingTwoButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,constant: 24),
            self.onboardingTwoButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingTwoButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -20)
        ])
        
    }
    
}
