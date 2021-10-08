//
//  SceneDelegate.swift
//  Lesson9
//
//  Created by Владимир Рузавин on 10/6/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
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

/*
extension ViewController: UIViewControllerTransitioningDelegate {
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return ViewControllerDismisser(endFrame: self.startView.frame)
    }
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return ViewControllerPresenter(startFrame: self.startView.frame)
    }
}

class ViewControllerPresenter: NSObject, UIViewControllerAnimatedTransitioning {
    
    let startFrame: CGRect
    
    init(startFrame: CGRect) {
        self.startFrame = startFrame
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let toView = transitionContext.viewController(forKey: .to)?.view else { return }
        toView.frame = self.startFrame
        transitionContext.containerView.addSubview(toView)
        
        let duration = transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: duration) {
            toView.frame = transitionContext.containerView.frame
        } completion: { didComleted in
            transitionContext.completeTransition(didComleted)
            <#code#>
        }
    }
}

class ViewControllerDismisser: NSObject, UIViewControllerAnimatedTransitioning {
    
    let endFrame: CGRect
    
    init(endFrame: CGRect) {
        self.endFrame = endFrame
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let fromView = transitionContext.viewController(forKey: .to)?.view else { return }
        
        let duration = transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: duration) {
            fromView.frame = self.endFrame
        } completion: { didComleted in
            transitionContext.completeTransition(didComleted)
        }
    }
}
*/
