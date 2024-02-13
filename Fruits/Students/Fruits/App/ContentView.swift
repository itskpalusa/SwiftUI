//
//  ContentView.swift
//  Fruits
//
//  Created by Karthik Palusa on 2/6/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit:item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            } //: BUTTON
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                }
                      )
            )
        } //: NAVIGATION
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
