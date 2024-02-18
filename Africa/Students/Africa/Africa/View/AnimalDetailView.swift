//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Karthik Palusa on 2/17/24.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor
                        .frame(height: 6)
                        .offset(y: 12)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                
                // DESCRIPTION
                
                // MAP
                
                //LINK
                
            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)",
                                displayMode: .inline)
        } //: SCROLL
    }
}

// MARK: - PREVIEW

#Preview {
    NavigationView {
        AnimalDetailView(animal: animals[0])
    }
}