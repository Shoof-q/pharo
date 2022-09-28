"
A simple class simulating a standard deck of 52 cards

Initialize with  new.

The deck can:
	-Flip     -> Show the whole deck in Transcript.
	-Flip:X   -> Show the first X cards.
	-FlipAt:X -> Show the Xth card.
	-Shuffle
"
Class {
	#name : #DeckOfCards,
	#superclass : #Object,
	#instVars : [
		'deck'
	],
	#category : #GamesAndToys
}

{ #category : #'print deck' }
DeckOfCards >> Flip [
	Transcript clear.
	deck do: [ :card |
		Transcript
			show: card;
			cr.
		 ]
]

{ #category : #'print deck' }
DeckOfCards >> Flip: amount [
	Transcript clear.
	amount <= 52 ifFalse: [ 
		Transcript show: 'Cant flip'
		 ].
	1 to: amount do: [ :i |
		Transcript
			show: (deck at: i);
			cr.
		 ]
]

{ #category : #'print deck' }
DeckOfCards >> FlipAt: amount [
	Transcript clear.
	amount <= 52 ifTrue:[	Transcript show: (deck at: amount)].
	amount > 52 ifTrue: [ Transcript show: 'Cant flip - number of cards' ]


]

{ #category : #'shuffle deck' }
DeckOfCards >> Shuffle [
	|helpDeck rand|
	helpDeck := OrderedCollection new.
	0 to: 51 do: [ :num |
		rand := ((1 to: (52-num)) atRandom).
		helpDeck add: (deck at: rand).
		deck removeAt: rand.
		 ].
	deck := helpDeck.
]

{ #category : #initialize }
DeckOfCards >> initialize [
	|suits numerals|
	suits := #('Clubs' 'Diamonds' 'Hearts' 'Spades').
	numerals := #('Ace' '2' '3' '4' '5' '6' '7' '8' '9' '10' 'Jack' 'Queen' 'King').
	deck := OrderedCollection new.
	suits do: [ :suit | numerals do: [ :numeral | deck add: (numeral , ' of ' , suit) ] ].
	
]
