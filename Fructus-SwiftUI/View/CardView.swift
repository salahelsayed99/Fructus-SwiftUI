//
//  CardView.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct CardView: View {
    
    //MARK:- Properties
    var fruits:FruitsModel
   @State private var isAnimating:Bool = false
    
    //MARK:-Body
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                Image(fruits.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                Text(fruits.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .shadow(color: .black, radius: 3, x: 3, y: 3)
                Text(fruits.headLine)
                    .foregroundColor(.white)
                    .frame(maxWidth: 480)
                    .padding(10)
                StartButton()
            }//VSTACK
        }//ZSTACK
        .onAppear(perform: {
            withAnimation {
                isAnimating = true
            }
        })
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,16)
    }
}


//MARK:-Preview

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruits: fruitsData[0]).previewLayout(.fixed(width: 320, height: 640))
    }
}
