"
Test
"
Class {
	#name : #CharacterGameTest,
	#superclass : #TestCase,
	#instVars : [
		'character',
		'abilities'
	],
	#category : #EverCraftTest
}

{ #category : #tests }
CharacterGameTest >> setUp [
 character := GameCharacter new.
]

{ #category : #tests }
CharacterGameTest >> test_shouldHaveADefaultArmorClass [
	self assert: (character armorClass = 10). 

]

{ #category : #tests }
CharacterGameTest >> test_shouldHaveAName [
	"comment stating purpose of message"
	character name: 'Temnus'.
	self assert: (character name = 'Temnus'). 

]

{ #category : #tests }
CharacterGameTest >> test_shouldHaveAnAlignment [

	character alignment: 'Good'.
	self assert: (character alignment = 'Good'). 

]

{ #category : #tests }
CharacterGameTest >> test_shouldHaveDefaultAbilities [
	abilities := character abilities.
	self assert: (abilities at: 'Strength') score equals: 10.
	self assert: (abilities at: 'Dexterity') score equals: 10.
	self assert: (abilities at: 'Constitution') score equals: 10.
	self assert: (abilities at: 'Wisdom') score equals: 10.
	self assert: (abilities at: 'Intelligence') score equals: 10.
	self assert: (abilities at: 'Charisma') score equals: 10
]

{ #category : #tests }
CharacterGameTest >> test_shouldHaveDefaultHP [
	self assert: (character hitPoints = 5). 

]
