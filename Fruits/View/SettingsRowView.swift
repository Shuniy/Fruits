//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Shubham Kumar on 24/01/22.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: PROPERTIES
    var name:String
    var content: String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    
    //MARK: BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }//: HStack
    }//: BODY
}

//MARK: PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Shubham Kumar").previewLayout(.sizeThatFits)
    }
}
