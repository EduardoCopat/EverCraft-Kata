"
Game Character
"
Class {
	#name : #GameCharacter,
	#superclass : #Object,
	#instVars : [
		'name',
		'alignment'
	],
	#category : #EverCraft
}

{ #category : #accessing }
GameCharacter >> alignment [
	^alignment
]

{ #category : #accessing }
GameCharacter >> alignment: anAlignment [
	alignment := anAlignment 
]

{ #category : #accessing }
GameCharacter >> armorClass [
	^10
]

{ #category : #accessing }
GameCharacter >> hitPoints [
	^5
]

{ #category : #accessing }
GameCharacter >> name [
	^name
]

{ #category : #accessing }
GameCharacter >> name: aName [
	"comment stating purpose of message"

	name := aName
]
