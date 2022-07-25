//
//  ContentView.swift
//  Fructus
//
//  Created by Vijay Parmar on 01/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSetting :Bool = false
    
    var fruit:[Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled())  { item in
                    NavigationLink (destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action:{
                isShowingSetting = true
            }){
                Image(systemName: "slider.horizontal.3")
            }//:Button
                                    .sheet(isPresented: $isShowingSetting){
                SettingsView()
            }
            )
        }//:Navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
