//
//  CustomButton.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct StartButton: View {
    
    @AppStorage("isOnBoarding") var isOnBoarding:Bool?

    
    
    var body: some View {
        Button(action: {
            isOnBoarding = false
            print("Start")
        }){
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }.padding(.horizontal,16)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(.white,lineWidth: 1.2))
        }.foregroundColor(.white)
        
    
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
}
