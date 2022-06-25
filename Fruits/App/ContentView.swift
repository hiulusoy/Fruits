//
//  ContentView.swift
//  Fruits
//
//  Created by Halil Usanmaz on 23.06.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES
    
    var fruits: [Fruit] = fruitsData;
    
    
    // MARK: BODY
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) {
                    item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION VIEW
      
    }
}
// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
