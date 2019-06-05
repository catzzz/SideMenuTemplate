//
//  SettingsSection.swift
//  SideMenu
//
//  Created by Jimmy Leu on 2019/6/5.
//  Copyright © 2019 Jimmy Leu. All rights reserved.
//


protocol SectionType:CustomStringConvertible {
    var containSwitch: Bool { get }
    
}

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


enum SocialOptions: Int,CaseIterable,SectionType {
    case editProfile
    case logOut
    
    var containSwitch: Bool {
        return false
    }
    
    var description: String {
        switch self {
        case .editProfile:
            return "Edit Profie"
        case .logOut:
            return "Log out"
        }
    }
    
    
}

enum CommunicationOptions: Int,CaseIterable,SectionType {

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
    
    var containSwitch: Bool {
        switch self {
        case .notifications:
            return true
        case .email:
            return true
        case .reportCrashes:
            return false
        }
    }
    

    

    
    
}


