//
// Created by Tales Pinheiro De Andrade on 31/05/18.
// Copyright (c) 2018 talesp. All rights reserved.
//

import UIKit

class ProfileCoordinator: Coordinator, TabbedCoordinator {

    private var profileViewController: ProfileViewController

    var tabViewController: UIViewController { return profileViewController }

    override init(rootViewController: UIViewController?) {
        profileViewController = ProfileViewController()
        super.init(rootViewController: rootViewController)
    }
}
