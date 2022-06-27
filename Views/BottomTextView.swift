//
//  BottomTextView.swift
//  Code History (iOS)
//
//  Created by Alex Nichols on 09/06/2022.
//

import SwiftUI

struct BottomTextView: View {
	let str: String
	
    var body: some View {
		HStack {
			Spacer()
			Text(str)
				.font(.title)
				.fontWeight(.bold)
				.padding()
			Spacer()
		}.background(GameColor.accentColor)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
		BottomTextView(str: "test")
    }
}
