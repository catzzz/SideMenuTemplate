//
//  MenuOption.swift
//  SideMenu
//
//  Created by Jimmy Leu on 2019/6/4.
//  Copyright © 2019 Jimmy Leu. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    case Profile
    case Inbox
    case Notification
    case Setting
    
    var description: String{
        switch self {
        case .Profile:  return "Profile"
        case .Inbox:    return "Inbox"
        case .Notification: return "Notification"
        case .Setting:  return "Setting"
        }
    }
    
    var image: UIImage{
        switch self {
            
        case .Profile: return UIImage(named:"ic_person_outline_white_2x" ) ?? UIImage()
        case .Inbox: return UIImage(named:"ic_mail_outline_white_2x" ) ?? UIImage()
        case .Notification: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        case .Setting: return UIImage(named: "baseline_settings_white_24dp") ?? UIImage()
        }
    }
}
