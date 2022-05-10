//
//  FruitsModel.swift
//  Fructus-SwiftUI
//
//  Created by Salah  on 29/01/2022.
//

import SwiftUI


struct FruitsModel:Identifiable{
    
    var id  = UUID()
    var title:String
    var image:String
    var headLine:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
    
    
}
