//
//  ViewController.swift
//  Hybride
//
//  Created by Aileen Gabriela Moreno Perez on 8/17/19.
//  Copyright © 2019 Aileen Gabriela Moreno Perez. All rights reserved.
//

import UIKit
import SwiftUI

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureTabs()
    }

    private func configureTabs() {
        
        let homeController = HomeViewController()
        homeController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        let favoritesController = FavoritesViewController()
        favoritesController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

        let moreController = UIHostingController(rootView: MoreTabScene())
        moreController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)

        let tabBarList = [homeController,
                          favoritesController,
                          moreController]

        self.viewControllers = tabBarList
        
    }
}

