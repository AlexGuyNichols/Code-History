//
//  GameViewModel.swift
//  Code History (iOS)
//
//  Created by Alex Nichols on 09/06/2022.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
	
	var correctGuesses: Int {
		game.guessCount.correct
	  }
	 
	  var incorrectGuesses: Int {
		game.guessCount.incorrect
	  }
	
	//Mark: - Published properties
	//2
	@Published private var game = Game()
	
	// Mark: - Internal properties
	// 3
	var currentQuestion: Question {
		game.currentQuestion
	}
	// 4
	var questionProgressText: String {
		"\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
	}
	
	var guessWasMade: Bool {
		if let _ = game.guesses[currentQuestion] {
			return true
		} else {
			return false
		}
	}
	
	var gameIsOver: Bool {
		game.isOver
	}
	
	//Internal Methods
	func makeGuess(atIndex index: Int) {
		game.makeGuessesforCurrentQuestion(atIndex: index)
	}
	
	func displayNextScreen() {
		game.updateGameStatus()
	}
	
	func color(forOptionIndex optionIndex: Int) -> Color {
		if let guessedIndex = game.guesses[currentQuestion] {
			if guessedIndex != optionIndex {
				return GameColor.mainColor
			} else if guessedIndex == currentQuestion.correctAnswerIndex {
				return GameColor.correctGuess
			} else {
				return GameColor.incorrectGuess
			}
		} else {
			return GameColor.mainColor
		}
	}
}
