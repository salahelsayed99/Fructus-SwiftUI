//
//  NutrientsView.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct NutrientsView: View {
    
    var fruit:FruitsModel
    var nutritions = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    var body: some View {
        
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutritions.count){ item in
                    Divider().padding(.vertical,2)
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutritions[item])
                        }
                        .foregroundColor(fruit.gradientColors[0])
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    }
                    
                }
            }.foregroundColor(.black)
             .accentColor(.black)
                
        }
    }
}

struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruit: fruitsData[0]).preferredColorScheme(.dark).previewLayout(.sizeThatFits).padding()
    }
}
