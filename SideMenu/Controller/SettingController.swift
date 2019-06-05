//
//  SettingController.swift
//  SideMenu
//
//  Created by Jimmy Leu on 2019/6/4.
//  Copyright © 2019 Jimmy Leu. All rights reserved.
//
import UIKit

private let reuseIdentifier = "SettingsCell"

class SettingController: UIViewController {
    
    // MARK: - Properties
    var tableView: UITableView!
    var userInfoHeader: UserInfoHeader!
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        
    }
    
    //MARK: - Selectors
    
    @objc func handdleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Handlers
    /*
    func configureUI() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Setting"
        navigationController?.navigationBar.barStyle = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handdleDismiss))
        
    }
    */
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 60
        
        tableView.register(SettingsCell.self, forCellReuseIdentifier: reuseIdentifier)
        view.addSubview(tableView)
        tableView.frame = view.frame
        
        let frame = CGRect(x: 0, y: 88, width: view.frame.width, height: 100)
        userInfoHeader = UserInfoHeader(frame: frame)
        tableView.tableHeaderView = userInfoHeader
        tableView.tableFooterView = UIView()
    }
    
    func configureUI() {
        configureTableView()
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.barTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handdleDismiss))
        
    }
    
}

extension SettingController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! SettingsCell
        return cell
    }
    
    
}
