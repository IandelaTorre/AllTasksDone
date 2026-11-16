//
//  AppInfoStore.swift
//  AllTasksDone
//
//  Created by ian on 16/11/26.
//

import Foundation

final class AppInfoStore {
    let name: String = "AllDone"
    let description: String = "AllDone is a must app for anyone who wants to get their life organized. It helps to manage your tasks. "
    let developer: String = "Ian Pere"
    var version: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "-"
    }
    var compatibility: String {
        if let minVersion = Bundle.main.infoDictionary?["MinimumOSVersion"] as? String {
            return "iOS \(minVersion)+"
        }
        return "-"
    }
}
