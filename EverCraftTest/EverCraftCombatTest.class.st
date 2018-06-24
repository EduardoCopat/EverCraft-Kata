Class {
	#name : #EverCraftCombatTest,
	#superclass : #TestCase,
	#category : #EverCraftTest
}

{ #category : #tests }
EverCraftCombatTest >> testAttackBeatingAC [
	| character enemy |
	character := GameCharacter new.
	enemy := GameCharacter new.
	
	self assert: (character attacks: enemy withRoll: 11 ) equals: true
]

{ #category : #tests }
EverCraftCombatTest >> testAttackLessThanAC [


	| character enemy |
	character := GameCharacter new.
	enemy := GameCharacter new.
	
	self assert: (character attacks: enemy withRoll: 9 ) equals: false
]

{ #category : #tests }
EverCraftCombatTest >> testAttackMeetingAC [


	| character enemy |
	character := GameCharacter new.
	enemy := GameCharacter new.
	
	self assert: (character attacks: enemy withRoll: 10 ) equals: true
]

{ #category : #tests }
EverCraftCombatTest >> testSuccesfulAttackHits [
	| character enemy |
	character := GameCharacter new.
	enemy := GameCharacter new.
	
	character attacks: enemy withRoll: 11.
	
	self assert: ( enemy hitPoints ) equals: 4
	
]
