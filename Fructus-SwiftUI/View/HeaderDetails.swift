//
//  HeaderDetails.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct HeaderDetails: View {
    
    var fruit:FruitsModel
    @State private var isAnimating = false
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 2, x: 2, y: 2)
                .scaleEffect(isAnimating ? 1 : 0.6)
        }//Zstack
        .frame(height: 400)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct HeaderDetails_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetails(fruit: fruitsData[0]).previewLayout(.fixed(width: 375, height: 400))
    }
}
