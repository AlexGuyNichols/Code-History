//
//  ContentView.swift
//  Shared
//
//  Created by Alex Nichols on 21/05/2022.
//

import SwiftUI

struct GameView: View {
	//    @State var mainColor = Color(red: 45/255, green: 63/255, blue: 83/255)
	//    let accentColor = Color(red: 57/255, green: 147/255, blue: 221/255)
	//    let offWhite = Color(red: 225/255, green: 225/255, blue: 232/255)
	
	//    let question = Question(
	//        questionText: "What was the first computer bug?",
	//        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
	//        correctAnswerIndex: 2)
	
	@StateObject var viewModel = GameViewModel()
	
	var body: some View {
		ZStack {
			GameColor.mainColor.ignoresSafeArea()
			VStack {
				Text(viewModel.questionProgressText)
					.font(.callout)
					.multilineTextAlignment(.leading)
					.padding(.vertical, 50.0)
				QuestionView(question: viewModel.currentQuestion)
					.padding(.bottom, 40.0)
			}
		}
		.background(NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
																					incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: {EmptyView() }) )
		.foregroundColor(GameColor.offWhite)
		.navigationBarHidden(true)
		.environmentObject(viewModel)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		GameView()
	}
}
