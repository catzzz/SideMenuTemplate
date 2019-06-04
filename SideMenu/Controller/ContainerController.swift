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
        
        let controller = UINavigationController(rootViewController: homeController)
        view.addSubview(controller.view)
        addChild(controller)
        //Move parent navigation controller to self (ContainController)
        controller.didMove(toParent: self)
    }
    
    func configureMenuController(){
        if menuController == nil{
            // add menu controller here
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print ("did add menu controller here")
        }
        
    }
}


extension ContainController:HomeControllerDelegage{
    func handleMenuToggle() {
        configureMenuController()
    }
}
