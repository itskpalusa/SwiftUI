//
//  InsetFactView.swift
//  Africa
//
//  Created by Karthik Palusa on 2/18/24.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

// MARK: - PREVIEW
#Preview {
    InsetFactView(animal: animals[0])
        .padding()
}
