"
Simulates roll of die

The die can:

Roll        -> Rolls a single 6 sided die.
Roll:X      -> Rolls an X-sided die.
Roll:X Of:Y -> Rolls X Y-sided dices.
"
Class {
	#name : #Dice,
	#superclass : #Object,
	#category : #GamesAndToys
}

{ #category : #'Roll dices' }
Dice >> Roll [
	self Roll:6
]

{ #category : #'Roll dices' }
Dice >> Roll: amount [
	
Transcript show: ((1 to: amount) atRandom); cr.
]

{ #category : #'Roll dices' }
Dice >> Roll: numberOfDice Of: type [

		numberOfDice timesRepeat:[
		Transcript show: ((1 to: type) atRandom).
		Transcript show: '  '
		].
		
	Transcript cr.
]
