//
//  FruitNutrienceView.swift
//  Fructus
//
//  Created by Vijay Parmar on 31/10/21.
//

import SwiftUI

struct FruitNutrienceView: View {
    
    var fruit:Fruit
    var nutritions:[String] = ["Energy","Sugar","Fat","Protien","Vitamins","Minrals"]
    
    
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutriestion Value per 10 gram"){
                ForEach(0..<nutritions.count,id: \.self) { item in
                    Divider().padding(.vertical,2 )
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutritions[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }
    }
}

struct FruitNutrienceView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrienceView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480 ))
            .padding()
    }
}
