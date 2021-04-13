//
//  FructusApp.swift
//  Fructus
//
//  Created by Miguel Angel Mejia Quiroga on 12/04/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else{
                ContentView()
            }
        }
    }
}
