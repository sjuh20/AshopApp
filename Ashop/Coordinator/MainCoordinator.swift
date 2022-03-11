//
//  MainCoordinator.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationControler: UINavigationController
    
    required init(navigationControler: UINavigationController) {
        self.navigationControler = navigationControler
        start()
    }
    
    func start() {
        navegarParaOnboardingOne()
    }
    
    func navegarParaOnboardingOne(){
        let onboardingOneCoordinator = OnboardingOneCoordinator(navigationControler : navigationControler)
        onboardingOneCoordinator.start()
    }
    
}




