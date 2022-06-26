//
//  SettingsView.swift
//  Fruits
//
//  Created by Halil Usanmaz on 26.06.2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode;
    
    // MARK: BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                   // MARK: SECTION 1
                    GroupBox(label: SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol.Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins and much more.").font(.footnote)
                        }
                    }
                   // MARK: SECTION 2
                    
                  // MARK: SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        Divider().padding(.vertical, 4)
                        
                       SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                } //:VSTACK
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss();
                }){
                    Image(systemName: "xmark")
                })
                
            }//: SCROLL
        }//:NAVIGATION
    }
}


    // MARK: PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.light)
    }
}
