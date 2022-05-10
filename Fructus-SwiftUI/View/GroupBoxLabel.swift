//
//  GroupBoxLabel.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 30/01/2022.
//

import SwiftUI

struct GroupBoxLabel: View {
    
    var labelTitle:String
    var labelImage:String
    
    var body: some View {
        HStack {
                Text(labelTitle)
                Spacer()
                Image(systemName: labelImage)
            }
    }
}

struct GroupBoxLabel_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxLabel(labelTitle: "Fractus", labelImage: "info.circle").preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
