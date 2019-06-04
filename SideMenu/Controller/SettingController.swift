//
//  SettingController.swift
//  SideMenu
//
//  Created by Jimmy Leu on 2019/6/4.
//  Copyright © 2019 Jimmy Leu. All rights reserved.
//
import UIKit

class SettingController: UIViewController {
    
    // MARK: - Properties
    
    var username: String?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        
        if let username = username{
            print("username is \(username)")
        }
    }
    
    //MARK: - Selectors
    
    @objc func handdleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Handlers
    
    func configureUI() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Setting"
        navigationController?.navigationBar.barStyle = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handdleDismiss))
        
    }
    
}
