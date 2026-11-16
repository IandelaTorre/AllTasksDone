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

    // MARK: - BODY
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    AppStartingView()
}
