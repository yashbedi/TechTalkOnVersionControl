//
//  Constants.swift
//  TestingProjForTechTalk
//
//  Created by Yash Bedi on 01/07/20.
//  Copyright © 2020 Yash Bedi. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    private let kClient = "iosapp"
    private let kManufacturer = "Apple"
    
    func getDeviceID() -> String{
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
    func getOSVersion() -> String {
        return UIDevice.current.systemVersion
    }
    func deviceModel() -> String {
        return UIDevice.current.model
    }
    func getVersion() -> String {
         return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
    func getDeviceName() -> String {
        return UIDevice.current.name.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlHostAllowed) ?? ""
    }
    func sendInfoParams() -> String{
        return "?version=\(getVersion())&client=\(kClient)&deviceIdentifier=\(deviceModel)=\(kManufacturer)&deviceName=\(getDeviceName())&osVersion=\(getOSVersion())"
    }
}
