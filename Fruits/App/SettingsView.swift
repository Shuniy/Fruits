//
//  SettingsView.swift
//  Fruits
//
//  Created by Shubham Kumar on 23/01/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing:20) {
                    //MARK: SECTION 1
                    GroupBox(label: SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo").resizable()
                                .scaledToFit().frame(width: 80, height: 80)
                                .cornerRadius(10)
                            Text("Most Fruits are naturally low in fat, sodium and calories. None have cholestrol. Fruits are sources of many essentials nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }//: HStack
                    }//:GroupBox 1
                    //MARK: SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again!").padding(.vertical, 8).frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart Onboarding Screen!".uppercased()).fontWeight(.medium)
                                    .foregroundColor(.secondary)
                            }
                        }//: Toogle
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }//: GroupBox 2
                    
                    //MARK: SECTION 3
                    GroupBox(label:SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Shubham Kumar")
                        SettingsRowView(name: "Designer", content: "ZippySphinx")
                        SettingsRowView(name: "Website", linkLabel: "Github", linkDestination: "github.com/zippysphinx")
                        SettingsRowView(name: "LinkedIn", linkLabel: "LinkedIn", linkDestination: "linkedin.com/shubham-kumar-5bbaa3160")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.1.1")
                    }//: Groupbox 3
                    
                }//: VStack
                .navigationTitle(Text("Settings"))
                .padding()
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing, content: {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }//:ToolbarItem
                    })
                })//: toolbar
            }//: Scroll View
        }//: Navigation View
    }
}

//MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
