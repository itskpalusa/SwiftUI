//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Karthik Palusa on 2/16/24.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //: VSTACK
        } //: HSTACK
    }
}


// MARK: - PREVIEW
// works as global declaration?!
let animals: [Animal] =
Bundle.main.decode("animals.json")

#Preview {

    
    AnimalListItemView(animal: animals[1])
}