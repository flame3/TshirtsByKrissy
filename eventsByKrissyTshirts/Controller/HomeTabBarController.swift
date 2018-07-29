//
//  HomeTabBarController.swift
//  eventsByKrissyTshirts
//
//  Created by nic on 8/7/2018.
//  Copyright © 2018 nic. All rights reserved.
//

import UIKit

class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*  UPcoming tab   */
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 0
        let upcomingVC = UpcomingViewController(collectionViewLayout: layout)
        let upComingNavController = UINavigationController(rootViewController: upcomingVC)
        upComingNavController.title = "UpComing"
        upComingNavController.navigationBar.tintColor = .gray
        upComingNavController.tabBarItem.image = UIImage(named: "thermometer")
        
        /*  Home tab   */
        let layoutForHome = UICollectionViewFlowLayout()
        layoutForHome.scrollDirection = .horizontal
        layoutForHome.minimumLineSpacing = 1
        layoutForHome.minimumInteritemSpacing = 0
        let homeVC = HomeController(collectionViewLayout: layoutForHome)
        let homeNavController = UINavigationController(rootViewController: homeVC)
        homeNavController.title = "Home"
        homeNavController.navigationBar.tintColor = .gray
        homeNavController.tabBarItem.image = UIImage(named: "home")
        
        /*  Account tab   */
        let accountVC = AccountViewController()
        let accountNavController = UINavigationController(rootViewController: accountVC)
        accountNavController.title = "Shopping-cart"
        accountNavController.navigationBar.tintColor = .gray
        accountNavController.tabBarItem.image = UIImage(named: "user")
        
        viewControllers = [upComingNavController, homeNavController, accountNavController]

        // Do any additional setup after loading the view.
    }

    

}
