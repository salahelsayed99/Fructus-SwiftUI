//
//  FruitsInList.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct FruitsInList: View {
    
    //MARK:- Properties
    var fruits:FruitsModel

    
    var body: some View {
        HStack{
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black, radius: 2, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(12)
                
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruits.headLine)
                    .font(.caption)
            }
        }
    }
}

struct FruitsInList_Previews: PreviewProvider {
    static var previews: some View {
        FruitsInList(fruits: fruitsData[0]).previewLayout(.sizeThatFits)
    }
}
