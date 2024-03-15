//
//  MainView.swift
//  Fisio
//
//  Created by Nats Salgado on 14/03/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            PatientListView()
                .tabItem {
                    Label("Profile", systemImage: "person.2.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
       
       
        .accentColor(.accentColor)
    }
}

#Preview {
    MainView()
}
