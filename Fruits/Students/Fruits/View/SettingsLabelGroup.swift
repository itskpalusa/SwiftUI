//
//  SettingsLabelGRoup.swift
//  Fruits
//
//  Created by Karthik Palusa on 2/12/24.
//

import SwiftUI

struct SettingsLabelGroup: View {
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsLabelGroup(labelText: "Fruits", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
}
