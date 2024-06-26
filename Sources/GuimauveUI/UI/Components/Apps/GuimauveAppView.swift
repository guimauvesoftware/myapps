//
//  GuimauveAppView.swift
//  
//
//  Created by Nathan Fallet on 28/01/2022.
//

import SwiftUI
import GuimauveUIObjc

public struct GuimauveAppView: View {
    
    @Environment(\.openURL) var openURL
    
    var app: SwiftUIGuimauveApp
    
    public init(app: SwiftUIGuimauveApp) {
        self.app = app
    }

    public var body: some View {
        HStack(spacing: 12) {
            Image(app.icon, bundle: .module)
                .resizable()
                .frame(width: 44, height: 44)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 4) {
                Text(app.title)
                Text(LocalizedStringKey(app.text), bundle: .module)
                    .foregroundColor(.secondary)
            }
            #if os(iOS)
            Spacer()
            #endif
        }
        .onTapGesture {
            if let url = URL(string: app.url) {
                openURL(url)
            }
        }
    }
    
}
