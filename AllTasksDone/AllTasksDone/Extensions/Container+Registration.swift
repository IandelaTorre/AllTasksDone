//
//  Container+Registration.swift
//  AllTasksDone
//
//  Created by ian on 16/11/26.
//

import FactoryKit

extension Container {
    var appInfoStore: Factory<AppInfoStore> {
        self { MainActor.assumeIsolated {AppInfoStore() } }.singleton
    }
    
    var authStore: Factory<any AuthStoreProtocol> {
        self { MainActor.assumeIsolated { AuthStore() } }.singleton
    }
}
