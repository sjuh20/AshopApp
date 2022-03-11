//
//  OnboardingOneView.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import UIKit

class OnboardingOneView: UIView {
    
    var onClickButtonNavigate: (()-> Void)!
    
    func setOnClickButtonNavigation(onClickButtonNavigate: @escaping (()-> Void)) {
        self.onClickButtonNavigate = onClickButtonNavigate
    }
    
    
    lazy var onboardingShopOneImageView:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "shop")
        return image
    }()
    
    lazy var onboardingPathShopOneImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "pathShop")
        return image
    }()
    
    lazy var onboardingOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Order fast"
        label.textColor = UIColor(red: 39/255, green: 36/255, blue: 89/255, alpha: 1)
        label.font = UIFont(name: "Montserrat-SemiBold", size: 20)
        label.textAlignment = .center
        return label
    }()
    
    
    lazy var onboardingOneSubtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Choosing fresh and delicious\n food right at home, simply select\n and order."
        label.numberOfLines = 3
        label.textAlignment = .center
        label.textColor = UIColor(red: 117/255, green: 117/255, blue: 158/255, alpha: 1)
        label.font = UIFont(name: "Montserrat-Medium", size: 16)
        return label
    }()
    
    lazy var onboardingStepOneImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "elipOne")
        return image
    }()
    
    lazy var onboardingOneButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont(name: "Montserrat-Medium", size: 16)
        button.backgroundColor = UIColor(red: 243/255, green: 92/255, blue: 86/255, alpha: 1)
        button.setTitle("Get Started!", for: .normal)
        button.addTarget(self, action: #selector(onboardingButtonOneAction), for: .touchUpInside)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubview(onboardingPathShopOneImageView)
        self.addSubview(onboardingShopOneImageView)
        self.addSubview(onboardingOneTitleLabel)
        self.addSubview(onboardingOneSubtitleLabel)
        self.addSubview(onboardingStepOneImage)
        self.addSubview(onboardingOneButton)
        
        
        self.setUpOnboardingPathOneImageViewConstraints()
        self.setUpOnboardingShopOneImageViewConstraints()
        self.setUpOnboardingOneTitleLabelViewConstraints()
        self.setUpOnboardingOneSubtitleLabelViewConstraints()
        self.setUpOnboardingStepOneImageViewConstraints()
        self.setUpOnboardingOneButtonViewConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func onboardingButtonOneAction(sender: UIButton!) {
        debugPrint("Olá tudo bem")
        if onClickButtonNavigate != nil {
            onClickButtonNavigate!()
        }
    }
    
    private func setUpOnboardingPathOneImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingPathShopOneImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            self.onboardingPathShopOneImageView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingPathShopOneImageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,constant: 40)
        ])
    }
    
    private func setUpOnboardingShopOneImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingShopOneImageView.topAnchor.constraint(equalTo: self.onboardingPathShopOneImageView.topAnchor, constant: 30),
            self.onboardingShopOneImageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingShopOneImageView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingShopOneImageView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),

        ])
    }
    
    private func setUpOnboardingOneTitleLabelViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingOneTitleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingOneTitleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingOneTitleLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingOneTitleLabel.topAnchor.constraint(equalTo: self.onboardingShopOneImageView.bottomAnchor,constant: 40)
        ])
        
    }
    private func setUpOnboardingOneSubtitleLabelViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingOneSubtitleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingOneSubtitleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingOneSubtitleLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingOneSubtitleLabel.topAnchor.constraint(equalTo: self.onboardingOneTitleLabel.bottomAnchor,constant: 20)
        ])
        
    }
    private func setUpOnboardingStepOneImageViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingStepOneImage.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.onboardingStepOneImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.onboardingStepOneImage.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingStepOneImage.topAnchor.constraint(equalTo: self.onboardingOneSubtitleLabel.bottomAnchor,constant: 40)
        ])
        
    }
    
    private func setUpOnboardingOneButtonViewConstraints(){
        NSLayoutConstraint.activate([
            self.onboardingOneButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant: -24),
            self.onboardingOneButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,constant: 24),
            self.onboardingOneButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            self.onboardingOneButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -20)
        ])
        
    }
    
}
