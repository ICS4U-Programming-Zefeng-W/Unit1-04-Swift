/*
  DiceGame.swift
  
  By Zefeng Wang
  Created on November 30, 2021
  This program reads a random integer(from 1-6) and checks to see if the user has guessed it. 
 */

var guess = 0
let correctAnswer = Int.random(in: 1..<7)
var attempts = 0

while guess != correctAnswer {
	print("Guess a number between 1 and 6: ")
	attempts += 1
	if let guess = Int(readLine()!) {
		if guess <= 6 && guess >= 1 {
			if guess > correctAnswer {
				print("You guessed too high! Try Again!")
			} else if guess < correctAnswer {
				print("You guessed too low! Try Again!")
			} else {
				print("You are correct! You guessed \(attempts) times.\n")
				break
			}
		}
	} else {
		print("Please enter an integer")
                continue
	}

}
print("Thanks for playing!")
