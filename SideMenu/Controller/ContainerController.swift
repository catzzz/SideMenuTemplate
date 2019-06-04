//
//  ContainerController.swift
//  SideMenu
//
//  Created by Jimmy Leu on 2019/6/2.
//  Copyright © 2019 Jimmy Leu. All rights reserved.
//

import UIKit

class ContainController: UIViewController{
    //MARK: - Properties
    
    var menuController: UIViewController!
    var centerController:UIViewController!
    var isExpanded = false
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return.lightContent
    }
    
    //MARK: - Handlers
    
    func configureHomeController(){
        let homeController = HomeController()
        homeController.delegate = self
        
        centerController = UINavigationController(rootViewController: homeController)
        view.addSubview(centerController.view)
        addChild(centerController)
        //Move parent navigation controller to self (ContainController)
        centerController.didMove(toParent: self)
    }
    
    func configureMenuController(){
        if menuController == nil{
            // add menu controller here
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
        }
        
    }
    
    func showMenuController(shouldExpand: Bool){
        if shouldExpand{
            // show menu
            UIView.animate(withDuration: 0, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
                
            }, completion: nil)
        }else{
            // hide menu
            UIView.animate(withDuration: 0, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                
                self.centerController.view.frame.origin.x = 0
                
            }, completion: nil)
        }
    }
}


extension ContainController:HomeControllerDelegage{
    func handleMenuToggle() {
        //configureMenuController()
        if !isExpanded{
            configureMenuController()
        }
        isExpanded = !isExpanded
        showMenuController(shouldExpand: isExpanded)
    }
}
