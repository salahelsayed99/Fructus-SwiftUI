//
//  ContentView.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings = false
    
    var fruits = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits){ item in
                    NavigationLink(destination: FruitDetails(fruit: item)){
                        FruitsInList(fruits: item)
                    }
                }
            }//List
            .padding(.vertical,4)
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }){Image(systemName:"slider.horizontal.3")}.sheet(isPresented: $isShowingSettings){
                SettingsSheet()
            })
                
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
            

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
