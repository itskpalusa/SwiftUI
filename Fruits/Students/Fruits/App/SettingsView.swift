//
//  SettingsView.swift
//  Fruits
//
//  Created by Karthik Palusa on 2/12/24.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        })
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    GroupBox( 
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        ) {
                            
                            SettingsRowView(name: "Developer", content: "Karthik Palusa")
                            SettingsRowView(name: "Designer", content: "Karthik Palusa")
                            SettingsRowView(name: "Compatibility", content:"iOS 17")
                            SettingsRowView(name: "Website", linkLabel: "Personal Website", linkDestination: "karthikpalusa.com")
                        }//: BOX
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                                    
                )
                .padding()
            }//: SCROLLVIEW
        }//: NAVIGATION
        
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsView()
    
}
