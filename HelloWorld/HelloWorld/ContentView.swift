//
//  ContentView.swift
//  HelloWorld
//
//  Created by Karthik Palusa on 1/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            Text("iOS")
                .font(.system(size:180))
                .fontWeight(.black)
                .foregroundStyle(LinearGradient(colors: [.pink,.purple,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
            Link("Go to Apple", destination: URL(string: "https://www.apple.com")!)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
