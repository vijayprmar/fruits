//
//  SettingsRowVIew.swift
//  Fructus
//
//  Created by Vijay Parmar on 09/11/21.
//

import SwiftUI

struct SettingsRowVIew: View {
    var name : String
    var content : String? = nil
    var linkLable : String? = nil
    var linkDestination : String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil {
                    Text(content ?? "").foregroundColor(Color.black)
                }else if (linkLable != nil && linkDestination != nil){
                    Link(linkLable ?? "",destination: URL(string: "https://\(linkDestination ?? "")")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowVIew_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowVIew(name: "Developer", content: "VIjay Parmar")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowVIew(name: "Website",linkLable: "Apple",linkDestination: "apple.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
