//
//  ScoreViewModel.swift
//  Code History (iOS)
//
//  Created by Alex Nichols on 10/06/2022.
//

import Foundation

struct ScoreViewModel {
	let correctGuesses: Int
	  let incorrectGuesses: Int
	 
	  var percentage: Int {
		(correctGuesses * 100 / (correctGuesses + incorrectGuesses))
	  }
}
