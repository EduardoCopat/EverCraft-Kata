"
Ability
"
Class {
	#name : #Ability,
	#superclass : #Object,
	#instVars : [
		'score'
	],
	#category : #EverCraft
}

{ #category : #accessing }
Ability >> modifier [
	^ ((score - 10) //  2 )
]

{ #category : #accessing }
Ability >> score [
	^score
]

{ #category : #accessing }
Ability >> score: aScore [
	score := aScore.
]
