//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Karthik Palusa on 2/17/24.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLLVIEW
    }
}

// MARK: - PREVIEW
#Preview {
    InsetGalleryView(animal: animals[0])
}
