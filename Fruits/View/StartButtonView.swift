//
//  StartButtonView.swift
//  fruits
//
//  Created by Shubham Kumar on 23/01/22.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - properties
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing:8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle").imageScale(.large)
            }.padding(.horizontal, 16).padding(.vertical, 10).background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }.tint(.white) //: Button
    }// :Body
    
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            
            
            
    }
}
