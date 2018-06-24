"
Game Character
"
Class {
	#name : #GameCharacter,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #EverCraft
}

{ #category : #accessing }
GameCharacter >> name [
	^name
]

{ #category : #accessing }
GameCharacter >> name: aName [
	"comment stating purpose of message"

	name := aName
]
