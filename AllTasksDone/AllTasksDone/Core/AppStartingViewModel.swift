//
//  AppStartingViewModel.swift
//  AllTasksDone
//
//  Created by ian on 16/11/26.
//

import Foundation
import Combine
import FactoryKit

@MainActor
final class AppStartingViewModel: ObservableObject {
    @Published var appState: AppState = .auth
    @Injected(\.authStore) var authStore
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        updateAppState()
        setSubscribers()
        
    }
}

private extension AppStartingViewModel {
    private func setSubscribers() {
        authStore.authUpdatePublisher
            .receive(on: DispatchQueue.main)
            .sink{ [weak self] _ in
                guard let self else { return }
                updateAppState()
            }
            .store(in: &cancellables)
    }
    
    private func getAppState() -> AppState {
        authStore.getAuthenticatedUser() == nil ? .auth : .app
    }
    
    private func updateAppState() {
        let currentAppState = getAppState()
        if appState != currentAppState {
            self.appState = currentAppState
        }
    }
}
