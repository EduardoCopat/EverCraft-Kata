"
Tests game character
"
Class {
	#name : #GameCharacterTest,
	#superclass : #TestCase,
	#instVars : [
		'character'
	],
	#category : #EverCraftTest
}

{ #category : #asserting }
GameCharacterTest >> setUp [
 character := GameCharacter new.
]

{ #category : #asserting }
GameCharacterTest >> shouldHaveAName [
	"comment stating purpose of message"
	character name: 'Temnus'.
	self assert: (character name = 'Temnus'). 
]
