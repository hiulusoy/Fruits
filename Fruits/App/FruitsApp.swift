//
//  FruitsApp.swift
//  Fruits
//
//  Created by Halil Usanmaz on 23.06.2022.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true;
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }
            else{
                ContentView()
            }
            
        }
    }
}
