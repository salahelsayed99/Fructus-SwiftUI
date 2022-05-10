//
//  FruitDetails.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct FruitDetails: View {
    
    var fruit:FruitsModel
    
    var body: some View {
    NavigationView{
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //Header
                HeaderDetails(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                    //Title
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[0])
                    
                    //Headline
                    Text(fruit.headLine)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        
                    
                    //Nutrients
                    NutrientsView(fruit: fruit)
                    
                    //Subheadline
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[0])
                    
                    //Description
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    
                    
                    //Link
                    SourceLinkView().padding(.vertical,30)
                    
                }.padding(.horizontal,15)
                
                
            }
            .navigationBarHidden(true)
                
            
        }//ScrollView
        .ignoresSafeArea()
    }//NavigationView
    .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct FruitDetails_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetails(fruit: fruitsData[0])
    }
}
