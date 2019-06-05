//
//  SettingsSection.swift
//  SideMenu
//
//  Created by Jimmy Leu on 2019/6/5.
//  Copyright © 2019 Jimmy Leu. All rights reserved.
//

enum SettingsSection: Int,CaseIterable,CustomStringConvertible{

    
    case Social = 0
    case Communications = 1
    
    var description: String {
        switch self {
        case .Social:
            return "Social"
        case .Communications:
            return "Communications"
        }
    }
    
  
}


enum SocialOptions: Int,CaseIterable,CustomStringConvertible{
    
    
    case editProfile = 0
    case logOut = 1
    
    var description: String {
        switch self {
        case .editProfile:
            return "Edit Profie"
        case .logOut:
            return "Log out"
        }
    }
    
    
}

enum CommunicationOptions: Int,CaseIterable,CustomStringConvertible{
    
    
    case notifications
    case email
    case reportCrashes

    
    var description: String {
        switch self {
        case .notifications:
            return "Notifications"
        case .email:
            return "Email"
        case .reportCrashes:
            return "Report Crashes"
        }
    }
    
    
}


