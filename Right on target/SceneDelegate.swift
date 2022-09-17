//
//  SceneDelegate.swift
//  Right on target
//
//  Created by ALEKSEY SUSLOV on 05.09.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        print("willConnectTo")
        
        // ОБЯЗАТЕЛЬНО внесите изменения в следующую строку кода,
        // добавив имя параметра windowScene, в который извлекается значение
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Шаг 1
        window = UIWindow(windowScene: windowScene)
        guard let window = window else {
                return
        }
        
        // Шаг 3
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        
        // Шаг 4
        window.rootViewController = viewController
        
        // Шаг 5
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("sceneDidDisconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("sceneDidBecomeActive")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("sceneWillResignActive")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("sceneWillEnterForeground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("sceneDidEnterBackground")
    }


}

