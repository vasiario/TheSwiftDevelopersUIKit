//
//  SceneDelegate.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 19.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let byeViewController = ByeViewController()
        let forYouViewController = ForYouViewController()
        let searchViewController = SearchViewController()
        let shoppingCartViewController = ShoppingCartViewController()
        
        let tabBarVC = UITabBarController()
        tabBarVC.viewControllers = [byeViewController, forYouViewController, searchViewController, shoppingCartViewController]
        
        let item1 = UITabBarItem(title: "Купить", image: UIImage.init(systemName: "laptopcomputer.and.iphone"), tag: 0)
        let item2 = UITabBarItem(title: "Для Вас", image: UIImage.init(systemName: "person.circle"), tag: 1)
        let item3 = UITabBarItem(title: "Поиск", image: UIImage.init(systemName: "magnifyingglass"), tag: 2)
        let item4 = UITabBarItem(title: "Корзина", image: UIImage.init(systemName: "bag"), tag: 3)
        
        byeViewController.tabBarItem = item1
        forYouViewController.tabBarItem = item2
        searchViewController.tabBarItem = item3
        shoppingCartViewController.tabBarItem = item4
        
        tabBarVC.selectedIndex = 0
        
        let navController = UINavigationController(rootViewController: tabBarVC)
        
        tabBarVC.tabBar.barTintColor = .white
        tabBarVC.tabBar.tintColor = .systemBlue
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}

