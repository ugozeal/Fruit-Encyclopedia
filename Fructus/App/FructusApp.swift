//
//  FructusApp.swift
//  Fructus
//
//  Created by David U. Okonkwo on 2/15/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
