//
//  Crypto_Trading_SimulatorApp.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/23/24.
//

import SwiftUI

@main
struct CryptoTradingSimulatorApp: App {
    
    @StateObject private var vm = HomeViewModel()
    @State private var showLaunchView: Bool = false
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationView {
                    HomeView()
                        .navigationBarHidden(true)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(vm)
                .background(Color.theme.background.edgesIgnoringSafeArea(.all))
                
                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
