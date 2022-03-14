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
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {
                    item in FruitRowView(fruit: item).padding(.vertical, 5)
                }
            } //: LIST
            .navigationTitle("Fruits")
        } //: Navigation View
        
    }
}

// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
