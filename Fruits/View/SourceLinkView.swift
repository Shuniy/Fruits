//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Shubham Kumar on 23/01/22.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

// MARK: PREVIeW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
    }
}
