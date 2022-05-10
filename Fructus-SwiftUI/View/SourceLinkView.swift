//
//  SourceLinkView.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI

struct SourceLinkView: View {
    
    
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "www.wikipedia.com")!)
                    .foregroundColor(.black)
                Image(systemName: "arrow.up.right.square")
            }
        }
        
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView().previewLayout(.sizeThatFits).padding()
    }
}
