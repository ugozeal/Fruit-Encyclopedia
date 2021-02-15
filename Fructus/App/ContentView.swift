//
//  ContentView.swift
//  Fructus
//
//  Created by David U. Okonkwo on 2/15/21.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properties
    var fruit: [Fruit] = fruitData
    @State private var isShowingSettings: Bool = false
    //MARK:- Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                } //Loop
            }// List
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//:Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
            )
        }//: Navigation View
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
            .previewDevice("iPhone 11 Pro")
    }
}
