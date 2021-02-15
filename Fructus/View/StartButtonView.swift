//
//  StartButtonView.swift
//  Fructus
//
//  Created by David U. Okonkwo on 2/15/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK:- Properties
    @AppStorage("isOnboarding") var isOnBoarding: Bool?
    //MARK:- Body
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }) {
            HStack (spacing: 8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: Button
        .accentColor(.white)
    }
}

//MARK:- Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark")
            .previewLayout(.sizeThatFits)
    }
}
