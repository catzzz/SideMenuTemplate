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
    
    var menuController: MenuController!
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
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return.slide
    }
    override var prefersStatusBarHidden: Bool{
        return isExpanded
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
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
        }
        
    }
    
    func animateMenuController(shouldExpand: Bool, menuOption: MenuOption?){
        if shouldExpand{
            // show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
                
            }, completion: nil)
        }else{
            // hide menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }) { (_) in
                guard let menuOption = menuOption else{
                    return
                }
                self.didSelectMenuOption(menuOption: menuOption)
                
            }
        }
        self.animateBar()
    }
    
    func didSelectMenuOption(menuOption: MenuOption){
        switch menuOption {
        case .Profile:
            print("Show profile")
        case .Inbox:
            print("Show Inbox")
        case .Notification:
            print("Show Notification")
        case .Setting:
            let controller = SettingController()
            controller.username = "Batman"
            present(UINavigationController(rootViewController: controller), animated: true, completion: nil)
        }
    }
    
    func animateBar(){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            
            self.setNeedsStatusBarAppearanceUpdate()
            
        }, completion: nil)
    }
    
}


extension ContainController:HomeControllerDelegage{
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
        if !isExpanded{
            configureMenuController()
        }
        
        isExpanded = !isExpanded
        animateMenuController(shouldExpand: isExpanded, menuOption: menuOption)
    }
    
}
