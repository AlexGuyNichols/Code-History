//
//  WelcomeView.swift
//  Code History (iOS)
//
//  Created by Alex Nichols on 09/06/2022.
//

import SwiftUI

struct WelcomeView: View {
	var mainColor = Color(red: 45/255, green: 63/255, blue: 83/255)
	let accentColor = Color(red: 57/255, green: 147/255, blue: 221/255)
	let offWhite = Color(red: 225/255, green: 225/255, blue: 232/255)
	
    var body: some View {
		NavigationView {
			ZStack {
				GameColor.mainColor.ignoresSafeArea()
				VStack{
					Spacer()
					VStack(alignment: .leading, spacing: 0) {
						Text("Select the correct answers to the following questions.")
							.font(.largeTitle)
							.fontWeight(.bold)
							.multilineTextAlignment(.center)
							.padding()
					}
					Spacer()
					NavigationLink(destination: GameView(), label: {
						BottomTextView(str: "Ok Let's Go")
					})
				}
				.foregroundColor(GameColor.offWhite)
			}
		}
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
