//
//  SettingsView.swift
//  Fructus
//
//  Created by Vijay Parmar on 01/11/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                      label:
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                      Divider().padding(.vertical, 4)
                      
                      HStack(alignment: .center, spacing: 10) {
                        Image("logo")
                          .resizable()
                          .scaledToFit()
                          .frame(width: 80, height: 80)
                          .cornerRadius(9)
                        
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                          .font(.footnote)
                      }
                    }
                    
                    //Section 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "CUStomization", labelImage: "paintbrush")){
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the app by toggle the switchin this box That way it starts the oboarding process and you will see the welcome screen again. ")
                            .padding(.vertical, 8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            Text("Restart".uppercased())
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                        
                    }
                    
                    
                    //Section 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        
                        SettingsRowVIew(name: "Developer",content: "Vijay Parmar")
                        
                        SettingsRowVIew(name: "Designer",content: "Darshana Vala")
                        
                        SettingsRowVIew(name: "Compability",content: "ios 14")
                        
                        SettingsRowVIew(name: "Website",linkLable: "Apple",linkDestination: "apple.com")
                    }//Box
                    
                    
                }//:Vstack
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .padding()
                .navigationBarItems(trailing:
                                        Button(action:{
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                }
                )
            }//:Scrollview
        }//:Nvaigation
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.light)
    }
}
