//
//  FruitsApp.swift
//  Fruits
//
//  Created by Karthik Palusa on 2/6/24.
//

import SwiftUI

@main
struct FruitsApp: App {
    // App Storage in quotes is the key name and we assign it to the variable locally
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
