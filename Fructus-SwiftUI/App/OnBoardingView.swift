//
//  OnBoardingView.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits:[FruitsModel] = fruitsData
    var body: some View {
        TabView{
            ForEach(0..<fruits.count){ item in
                CardView(fruits: fruits[item])
            }
   
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,10)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
