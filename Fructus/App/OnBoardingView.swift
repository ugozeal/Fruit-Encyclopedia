//
//  OnBoardingView.swift
//  Fructus
//
//  Created by David U. Okonkwo on 2/15/21.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK:- Properties
    var fruits: [Fruit] = fruitData
    
    //MARK:- Body
    var body: some View {
        TabView {
            ForEach (fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }// Loop
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK:- Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitData)
    }
}
