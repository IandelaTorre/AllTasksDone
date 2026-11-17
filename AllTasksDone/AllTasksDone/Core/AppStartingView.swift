//
//  AppStartingView.swift
//  AllTasksDone
//
//  Created by ian on 09/11/26.
//

import SwiftUI
import FactoryKit

struct AppStartingView: View {
    // MARK: - PROPERTIES
    @StateObject private var viewModel: AppStartingViewModel = .init()
    
    // MARK: - BODY
    var body: some View {
        Group {
            switch viewModel.appState {
            case .auth:
                Text("Auth view")
            case .app:
                NavigationStack {
                    Text("App")
                }
            }//: SWITCH
        }//: GROUP
        .animation(.spring, value: viewModel.appState)
    }
}

#Preview {
    AppStartingView()
}
