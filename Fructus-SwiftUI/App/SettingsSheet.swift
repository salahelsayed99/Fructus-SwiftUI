//
//  SettingsSheet.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct SettingsSheet: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnBoarding") var isOnBoarding:Bool = false

    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20){
                    GroupBox(label:
                                GroupBoxLabel(labelTitle: "Fractus", labelImage: "info.circle")
                    ){
                        Divider().padding(10)
                        HStack(alignment: .center, spacing: 10)  {
                            Image("strawberry")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80,alignment: .leading)
                                .shadow(color: .black, radius: 2, x: 2, y: 2)
                                
                            Text("Fruits and vegetables contain important vitamins, minerals and plant chemicals. They also contain fibre.")
                        }
                        
                        
                    }
                    
                    
                GroupBox(label:
                        GroupBoxLabel(labelTitle: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(10)
                        VStack(alignment: .center, spacing: 20)  {
                            Text("Fruits and vegetables contain important vitamins, minerals and plant chemicals. They also contain fibre.Fruits and vegetables contain important vitamins, minerals and plant chemicals. They also contain fibre.")
                                .padding(.vertical,10)
                                .frame(minHeight:60)
                                .layoutPriority(1)
                                .multilineTextAlignment(.leading)
                                .font(.footnote)
                            
                            Toggle(isOn: $isOnBoarding){
                                Text("Restart".uppercased())
                                    
                            }.padding()
                            .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous)))
                            
                            
                        }
                        
                        
                    }

                }//Vstack
                .navigationTitle("Settings")
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
            }.padding()
        }
    }
    
    
    
}

struct SettingsSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSheet()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 pro")
    }
}
