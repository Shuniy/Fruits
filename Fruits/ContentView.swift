//
//  ContentView.swift
//  fruits
//
//  Created by Shubham Kumar on 23/01/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES
    var fruits:[Fruit] = fruitsData
    @State private var isShowingSettings:Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {
                    item in
                    NavigationLink(destination:
                                    FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item).padding(.vertical, 5)
                    }//: Foreach
                }
            } //: LIST
            .navigationTitle("Fruits")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Button(action: {
                        isShowingSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }//: Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                })//: ToolbarItem
            })//: Toolbar
        } //: Navigation View
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        
    }
}
