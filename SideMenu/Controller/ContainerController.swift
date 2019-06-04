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
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHomeController()
    }
    
    //MARK: - Handlers
    
    func configureHomeController(){
        let homeController = HomeController()
        let controller = UINavigationController(rootViewController: homeController)
        // add
        view.addSubview(controller.view)
        addChild(controller)
        //Move parent navigation controller to self (ContainController)
        controller.didMove(toParent: self)
    }
    
    func configureMenuController(){
        let menuController = MenuController()
        
    }
}
