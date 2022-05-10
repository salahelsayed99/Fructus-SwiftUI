//
//  Fructus_SwiftUIApp.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

@main
struct Fructus_SwiftUIApp: App {
    
    @AppStorage("isOnBoarding") var isOnBoarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding{
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
