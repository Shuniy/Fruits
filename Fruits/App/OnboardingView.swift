//
//  OnboardingView.swift
//  fruits
//
//  Created by Shubham Kumar on 23/01/22.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...3]) {
                item in
                FruitCardView(fruit: item)
            }//: LOOP

        } //: TAB
        .tabViewStyle(PageTabViewStyle()).padding(.vertical, 20)
        
    }//: Body
    
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
