//
//  ChoiceTextView.swift
//  Code History (iOS)
//
//  Created by Alex Nichols on 05/06/2022.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 57/255, green: 147/255, blue: 221/255)
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding()
			//.background(GameColor.accentColor)
			.border(GameColor.accentColor, width: 5)
            .cornerRadius(15)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
