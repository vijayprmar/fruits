//
//  FruitModel.swift
//  Fructus
//
//  Created by Vijay Parmar on 23/10/21.
//

import SwiftUI

//MARK:-Fruits Data Model

struct Fruit : Identifiable{
    
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description:String
    var nutrition:[String]
    
}
