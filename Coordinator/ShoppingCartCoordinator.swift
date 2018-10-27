//
// Created by Tales Pinheiro De Andrade on 31/05/18.
// Copyright (c) 2018 talesp. All rights reserved.
//

import UIKit

class ShoppingCartCoordinator: Coordinator, TabbedCoordinator {

    private var navigationController: UINavigationController

    var tabViewController: UIViewController { return navigationController }

    override init(rootViewController: UIViewController?) {
        let productListViewController = ShoppingCartViewController()
        self.navigationController = UINavigationController(rootViewController: productListViewController)

        super.init(rootViewController: rootViewController)
    }
}
